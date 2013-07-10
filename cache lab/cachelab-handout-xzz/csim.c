#include "cachelab.h"
#include <stdio.h>
#include <unistd.h>
#include <getopt.h>
#include <stdlib.h>
#include <string.h>

/* 定义各种状态 */
#define MISS 10
#define HIT 20
#define MISS_AND_EVICTION 30
#define MISS_AND_HIT 40
#define MISS_EVICTION_AND_HIT 50

/* 结构定义 */
typedef struct {
	int valid; 	/* valid bit per line */
	int tag; 	/* tag of a line */
	int access_time; 	/* 取值大小为1~line_num, 为1时说明是要evict的 */
}line;
typedef struct {
	line *lines;
}set;
typedef struct {
	int set_num; 	/* cache sets num */
	int line_num; 	/* lines per set */
	set *sets;
}simu_cache;

/* 函数声明 */
int getinfo(int argc, char *argv[], int *ps, int *pE, int *pb, char *trace_name, int *vflag);
void Usage();
int initCache(simu_cache *cache, int s, int E);
int parse_traces(simu_cache *cache, char *line_buf, int s, int E, int b, int flag);
int getSetBits(int addr, int s, int b);
int getTagBits(int addr, int s, int b);
int updateAccessTime(simu_cache *cache, int selset, int cl);

/* 全局变量 */
int hits = 0;
int misses = 0;
int evictions = 0;

/* 主函数 */
int main(int argc, char *argv[])
{
	FILE *pf;
	char line_buf[100];
	int s, E, b, flag;
	char trace_name[100];
	int state;
	simu_cache cache;
	flag = 0;	
	getinfo(argc, argv, &s, &E, &b, trace_name, &flag);
	initCache(&cache, s, E);
	pf = fopen(trace_name, "r");
	if (!pf) {
		printf("Error: Cann't open file %s!\n", trace_name);
		return -1;
	}
	while (NULL != fgets(line_buf, 100, pf)) {
		if (' ' == line_buf[0]) {
			line_buf[strlen(line_buf)-1] = '\0';
			state = parse_traces(&cache, line_buf, s, E, b, flag);
			if (1 == flag) {
				switch (state) {
				case HIT:
					printf("%s hit\n", line_buf+1);
					break;
				case MISS:
					printf("%s miss\n", line_buf+1);
					break;
				case MISS_AND_HIT:
					printf("%s miss hit\n", line_buf+1);
					break;
				case MISS_AND_EVICTION:
					printf("%s miss eviction\n", line_buf+1);
					break;
				case MISS_EVICTION_AND_HIT:
					printf("%s miss eviction hit\n", line_buf+1);
					break;
				default:
					break;
				}
			}
		}
	}
	fclose(pf);
	printSummary(hits, misses, evictions);
	return 0;
}

/*
 *  得到参数信息
 */
int getinfo(int argc, char *argv[], int *ps, int *pE, int *pb, char *trace_name, int *vflag)
{
	int opt;
	int count_arg = 0;
	opterr = 0;
	while ((opt = getopt(argc, argv, "vs:E:b:t:")) != -1) {
		switch (opt) {
		case 'v':
			*vflag = 1;	
			break;
		case 's':
			++count_arg;
			*ps = atoi(optarg);	
			break;
		case 'E':
			++count_arg;
			*pE = atoi(optarg);
			break;
		case 'b':
			++count_arg;
			*pb = atoi(optarg);
			break;
		case 't':
			++count_arg;
			strcpy(trace_name, optarg);
			break;
		default: 	/* '?' */
			Usage();
			exit(-1);
			break;
		}
	}
	
	if (count_arg < 4) {
		Usage();
		exit(-1);
	}
	return 0;
}

/**
 * 打印帮助信息
 */
void Usage()
{
	printf("Usage: ./csim [-h] [-v] -s <s> -E <E> -b <b> -t <tracefile>\n \
	• -h: Optional help flag that prints usage info\n \
	• -v: Optional verbose flag that displays trace info \n \
	• -s <s>: Number of set index bits (S = 2s is the number of sets) \n \
	• -E <E>: Associativity (number of lines per set) \n \
	• -b <b>: Number of block bits (B = 2b is the block size) \n \
	• -t <tracefile>: Name of the valgrind trace to replay\n");
}

/**
 * 根据参数信息初始化cache
 */
int initCache(simu_cache *cache, int s, int E)
{
	int i, j;
	cache->set_num = (2 << s);
	cache->line_num = E;
	cache->sets = (set *)malloc(cache->set_num * sizeof(set));
	if (!cache->sets) {
		fprintf(stderr, "Memory error!\n");
		exit(-1);
	}
	for (i = 0; i < cache->set_num; i++) {
		cache->sets[i].lines = (line *)malloc(cache->line_num * sizeof(line));
		if (!cache->sets[i].lines) {
			fprintf(stderr, "Memory Error!\n");
			exit(-1);
		}
		for (j = 0; j < cache->line_num; j++) {
			cache->sets[i].lines[j].valid = 0;
		}
	}
	return 0;
}

/**
 * 分析内存读取命令
 */
int parse_traces(simu_cache *cache, char *line_buf, int s, int E, int b, int flag)
{
	int i;
	char opt;
	int addr;
	int selset, tag;
	sscanf(line_buf, " %c %x", &opt, &addr);
	selset = getSetBits(addr, s, b);
	tag = getTagBits(addr, s, b);
	for (i = 0; i < cache->line_num; i++) {
		if (1 == cache->sets[selset].lines[i].valid && 
				tag == cache->sets[selset].lines[i].tag) {
			/* Hit immediately */
			if ('M' == opt) {
				++hits;
				++hits;
			} else {
				++hits;
			}
			updateAccessTime(cache, selset, i);
			return HIT;
		}
	}

	/* Not Hit */
	++misses;
	for (i = 0; i < cache->line_num; i++) {
		if (0 == cache->sets[selset].lines[i].valid) { 				
			/* there is a empty line, No eviction */
			cache->sets[selset].lines[i].valid = 1;
			cache->sets[selset].lines[i].tag = tag;
			updateAccessTime(cache, selset, i);
			if ('M' == opt) {
				++hits;
				return MISS_AND_HIT;
			} else {
				return MISS;	
			}
		}
	}

	/* Need eviction */
	++evictions;
	for (i = 0; i < cache->line_num; i++) {
		if (1 == cache->sets[selset].lines[i].access_time) {
			cache->sets[selset].lines[i].valid = 1;
			cache->sets[selset].lines[i].tag = tag;
			updateAccessTime(cache, selset, i);
			if ('M' == opt) {
				++hits;
				return MISS_EVICTION_AND_HIT;
			} else {
				return MISS_AND_EVICTION;
			}
		}

	}

	return 0;
}

/**
 * 返回地址addr选择的容器set序号
 */
int getSetBits(int addr, int s, int b)
{
	int mask;
	mask = 0x7fffffff >> (31 - s);
	addr = addr >> b;
	return (mask & addr);
}

/**
 * 得到addr的tag位
 */
int getTagBits(int addr, int s, int b)
{
	int mask;
	mask = 0x7fffffff >> (31 - s - b);
	addr = addr >> (s + b);
	return (mask & addr);
}

/**
 * 更新lines的访问时间
 */
int updateAccessTime(simu_cache *cache, int selset, int cl)
{
	int i;
	for (i = 0; i < cache->line_num; i++) {
		if (1 == cache->sets[selset].lines[i].valid && 
			cache->sets[selset].lines[i].access_time > 
				cache->sets[selset].lines[cl].access_time) {
			--cache->sets[selset].lines[i].access_time;	
		}
	}
	cache->sets[selset].lines[cl].access_time = cache->line_num;
	return 0;
}
