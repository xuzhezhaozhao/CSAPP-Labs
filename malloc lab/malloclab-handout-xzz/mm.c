/*
 *  使用 Segregated Fits 算法, 将free block按大小划分到不同的free list中,
 *  每个free list 的头指针保存在heap最开始的地址中. 本程序一共划分了18个
 *  list, heap地址的前18个字分别保存18个list的头指针, free block的第一个
 *  字保存指向list中下一个free block的指针, 第二个字保存指向前一个free 
 *  block的指针, 所以每个block的最小值为 16 bytes. 每个block有一个header
 *  和一个footer, 功能与Implicit list算法一样.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* Basic constants and macros */
#define WSIZE 4 	/* Word and header/footer size (bytes) */
#define DSIZE 8 	/* Double word size (bytes) */
#define CHUNKSIZE (1<<12) 	/* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Pack a size and allocated bit into  word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read and write a pointer at address p */
#define GET_PTR(p) ((unsigned int *)(long)(GET(p)))
#define PUT_PTR(p, ptr) (*(unsigned int *)(p) = ((long)ptr))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))


/* 每个free list中块的大小范围 */
#define SIZE1 (1<<4)
#define SIZE2 (1<<5)
#define SIZE3 (1<<6)
#define SIZE4 (1<<7)
#define SIZE5 (1<<8)
#define SIZE6 (1<<9)
#define SIZE7 (1<<10)  		/* 1 KB */
#define SIZE8 (1<<11)
#define SIZE9 (1<<12)
#define SIZE10 (1<<13)
#define SIZE11 (1<<14)
#define SIZE12 (1<<15)
#define SIZE13 (1<<16)
#define SIZE14 (1<<17)
#define SIZE15 (1<<18)
#define SIZE16 (1<<19)
#define SIZE17 (1<<20) 		/* 1 MB */

#define LISTS_NUM 18 		/* free list 的数量 */

/* Globe var */
static char *heap_listp;

/* 函数声明 */
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void *find_fit(size_t asize);
static void place(void *bp, size_t asize);
static void insert_list(void *bp);
int getListOffset(size_t size);
void delete_list(void *bp);

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
	/* Team name */
	"xzz",
	/* First member's full name */
	"xzz",
	/* First member's email address */
	"zhezhaoxu@gmail.com",
	/* Second member's full name (leave blank if none) */
	"",
	/* Second member's email address (leave blank if none) */
	""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
	/* 创建空heap, 前18个WSIZE分别存放18个free list的头指针, 后面的结构与
	 * 书本P863相同 */
	char *bp;
	int i;

	if ((heap_listp = mem_sbrk((LISTS_NUM + 4) * WSIZE)) == (void *)-1) {
		return -1;
	}
	PUT(heap_listp + LISTS_NUM * WSIZE, 0);
	PUT(heap_listp + (1 + LISTS_NUM) * WSIZE, PACK(DSIZE, 1));
	PUT(heap_listp + (2 + LISTS_NUM) * WSIZE, PACK(DSIZE, 1));
	PUT(heap_listp + (3 + LISTS_NUM) * WSIZE, PACK(0, 1));

	for (i = 0; i < LISTS_NUM; i++) {
		PUT_PTR(heap_listp + WSIZE * i, NULL);
	}

	/* Extend the empty heap with a free block of CHUNKSIZE bytes */
	if ((bp = extend_heap(CHUNKSIZE / WSIZE)) == NULL) {
		return -1;
	}

	return 0;
}

/*
 * 扩展heap的大小
 */
void *extend_heap(size_t words)
{
	char *bp;
	size_t size;

	/* Allocate an even number of words to maintain alignment */
	size = (words % 2) ? ((words + 1) * WSIZE) : (words * WSIZE);
	if ((long)(bp = mem_sbrk(size)) == -1) {
		return NULL;
	}

	/* Initialize free block header/footer and the epilogue header */
	PUT(HDRP(bp), PACK(size, 0)); 		/* Free block header */
	PUT(FTRP(bp), PACK(size, 0)); 		/* Free block footer */
	PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); 	/* New epilogue header */

	/* Coalesce if the previous block was free */
	return coalesce(bp);
}


/*
 * 合并free block 
 */
void *coalesce(void *bp)
{
	size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
	size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
	size_t size = GET_SIZE(HDRP(bp));
	
	if (prev_alloc && next_alloc) { 	/* 前后都分配了  */
		bp = bp;
	} else if (prev_alloc && !next_alloc) { 	/* 前分配, 后未分配 */
		delete_list(NEXT_BLKP(bp));
		size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
		PUT(HDRP(bp), PACK(size, 0));
		PUT(FTRP(bp), PACK(size, 0));
	} else if (!prev_alloc && next_alloc) { 	/* 前未分配, 后分配 */
		delete_list(PREV_BLKP(bp));
		size += GET_SIZE(HDRP(PREV_BLKP(bp)));
		PUT(FTRP(bp), PACK(size, 0));
		PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
		bp = PREV_BLKP(bp);
	} else { 				/* 前后都未分配 */
		delete_list(NEXT_BLKP(bp));
		delete_list(PREV_BLKP(bp));
		size = size + GET_SIZE(HDRP(PREV_BLKP(bp))) + 
			GET_SIZE(HDRP(NEXT_BLKP(bp)));
		PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
		PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
		bp = PREV_BLKP(bp);
	}

	insert_list(bp);
	return bp;
}

/* 
 * mm_malloc - Allocate a block by searching the free list.
 *	 Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{	
	size_t asize; 		/* Adjusted block size */
	size_t extendsize; 	/* Amount to extend heap if no fit */
	char *bp;

	/* Igore spurious requests */
	if (0 == size) {
		return NULL;
	}

	/* Adjusted block size to include overhead and alignment reqs */
	if (size <= DSIZE) {
		asize = 2 * DSIZE;
	} else {
		asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
	}

	/* Search the free list for a fit */
	if ((bp = find_fit(asize)) != NULL) {
		place(bp, asize);
		return bp;
	}

	/* No fit found. Get more memory and place the block */
	extendsize = MAX(asize, CHUNKSIZE);
	if ((bp = extend_heap(extendsize / WSIZE)) == NULL) {
		return NULL;
	}
	place(bp, asize);
	return bp;
}


/*
 * getListOffset - 得到大小为size的块应该在哪个list中
 */
int getListOffset(size_t size)
{
	/*int n;                                                              */
	/*int tsize;*/
	/*tsize = size;*/
	/*n = 0;*/
	/*if (0 == tsize) {*/
		/*return 0;*/
	/*}*/
	/*while ((tsize = (tsize / 2))) {*/
	       /*++n;*/
	/*}   */
	/*if (size != (1 << n)) {*/
               /*++n; */
	/*}   */
	/*if (n < 4) {*/
	       /*return 0;*/
               /*}*/
	/*if (n > 20) {*/
		/*return 17;*/
	/*}*/
	/*return (n - 4);*/
	if (size <= SIZE1) {
		return 0;
	} else if (size <= SIZE2) {
		return 1;
	} else if (size <= SIZE3) {
		return 2;
	} else if (size <= SIZE4) {
		return 3;
	} else if (size <= SIZE5) {
		return 4;
	} else if (size <= SIZE6) {
		return 5;
	} else if (size <= SIZE7) {
		return 6;
	} else if (size <= SIZE8) {
		return 7;
	} else if (size <= SIZE9) {
		return 8;
	} else if (size <= SIZE10) {
		return 9;
	} else if (size <= SIZE11) {
		return 10;
	} else if (size <= SIZE12) {
		return 11;
	} else if (size <= SIZE13) {
		return 12;
	} else if (size <= SIZE14) {
		return 13;
	} else if (size <= SIZE15) {
		return 14;
	} else if (size <= SIZE16) {
		return 15;
	} else if (size <= SIZE17) {
		return 16;
	} else {
		return 17;
	}
}

/*
 * insert_list - 将free block插入到相应大小的free list中, 插入位置为表头
 */
void insert_list(void *bp)
{
	int index;
	size_t size;
	size = GET_SIZE(HDRP(bp));
	index = getListOffset(size);

	if (GET_PTR(heap_listp + WSIZE * index) == NULL) {
		PUT_PTR(heap_listp + WSIZE * index, bp);
		PUT_PTR(bp, NULL);
		PUT_PTR((unsigned int *)bp + 1, NULL);
	} else {
		PUT_PTR(bp, GET_PTR(heap_listp + WSIZE * index));
		PUT_PTR(GET_PTR(heap_listp + WSIZE * index) + 1, bp);  	/* 修改前一个位置 */
		PUT_PTR((unsigned int *)bp + 1, NULL);
		PUT_PTR(heap_listp + WSIZE * index, bp);
	}
}

/* 
 * delete_list - 删除链表结点
 */
void delete_list(void *bp)
{
	int index;
	size_t size;
	size = GET_SIZE(HDRP(bp));
	index = getListOffset(size);
	if (GET_PTR(bp) == NULL && GET_PTR((unsigned int *)bp + 1) == NULL) { 
		/* 链表中唯一结点 */
		PUT_PTR(heap_listp + WSIZE * index, NULL);
	} else if (GET_PTR(bp) == NULL && GET_PTR((unsigned int *)bp + 1) != NULL) {
		/* 链表中最后一个结点, 不是唯一一个 */
		PUT_PTR(GET_PTR((unsigned int *)bp + 1), NULL);
	} else if (GET_PTR(bp) != NULL && GET_PTR((unsigned int *)bp + 1) == NULL){
		/* 链表中第一个结点, 不是唯一一个 */
		PUT_PTR(heap_listp + WSIZE * index, GET_PTR(bp));
		PUT_PTR(GET_PTR(bp) + 1, NULL);
	} else if (GET_PTR(bp) != NULL && GET_PTR((unsigned int *)bp + 1) != NULL) {
		/* 链表中的中间结点 */
		PUT_PTR(GET_PTR((unsigned int *)bp + 1), GET_PTR(bp));
		PUT_PTR(GET_PTR(bp) + 1, GET_PTR((unsigned int*)bp + 1));
	}
}

/*
 * find_fit - Search the free list for a fit 
 */
void *find_fit(size_t asize)
{
	int index;
	index = getListOffset(asize);
	unsigned int *ptr;

	/* 小的class内找不到就到大的class内找 */
	while (index < 18) {
		ptr = GET_PTR(heap_listp + 4 * index);
		while (ptr != NULL) {
			if (GET_SIZE(HDRP(ptr)) >= asize) {
				return (void *)ptr;
			}
			ptr = GET_PTR(ptr);
		}
		index++;
	}

	return NULL;
}

/*
 * place - place the requested block at the beginning of the free block
 */
void place(void *bp, size_t asize)
{
	size_t csize = GET_SIZE(HDRP(bp));
	delete_list(bp);
	if ((csize - asize) >= (2 * DSIZE)) {
		PUT(HDRP(bp), PACK(asize, 1));	
		PUT(FTRP(bp), PACK(asize, 1));
		bp = NEXT_BLKP(bp);
		PUT(HDRP(bp), PACK(csize - asize, 0));
		PUT(FTRP(bp), PACK(csize - asize, 0));
		insert_list(bp);
	} else {
		PUT(HDRP(bp), PACK(csize, 1));
		PUT(FTRP(bp), PACK(csize, 1));
	}
}

/*
 * mm_free - Freeing a block.
 */
void mm_free(void *ptr)
{
	size_t size = GET_SIZE(HDRP(ptr));

	PUT(HDRP(ptr), PACK(size, 0));
	PUT(FTRP(ptr), PACK(size, 0));
	coalesce(ptr);
}


/*
 * mm_realloc - 直接用malloc和free组合实现
 */
void *mm_realloc(void *ptr, size_t size)
{
	size_t asize;
	void *oldptr = ptr;
	void *newptr;

	/* free */
	if (0 == size) {
		free(oldptr);
		return NULL;
	}


	if (size <= DSIZE) {
		asize = 2 * DSIZE;
	} else {
		asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE);
	}

	if (asize == GET_SIZE(HDRP(oldptr))) {
		return oldptr;
	}
	
	/* 缩小空间 */
	if (asize < GET_SIZE(HDRP(oldptr))) {
		newptr = mm_malloc(size);
		memmove(newptr, oldptr, size);
		mm_free(oldptr);

		return newptr;
	}


	/* 扩大空间, 先检测其前后相邻的块是否满足扩大需求 */
	/* 试了之后效果不明显 */
	/*if (!GET_ALLOC(HDRP(NEXT_BLKP(oldptr))) && GET_ALLOC(HDRP(PREV_BLKP(oldptr))) &&*/
			/*GET_SIZE(HDRP(oldptr)) + GET_SIZE(HDRP(NEXT_BLKP(oldptr))) >= asize) {*/
		/*[> 可与后面的块合并 <]*/
		/*delete_list(NEXT_BLKP(oldptr));*/
		/*csize = GET_SIZE(HDRP(oldptr)) + GET_SIZE(HDRP(NEXT_BLKP(oldptr)));*/
		/*PUT(HDRP(oldptr), PACK(csize, 0));	*/
		/*PUT(FTRP(oldptr), PACK(csize, 0));*/
		/*newptr = oldptr;*/
		/*if ((csize - asize) >= (2 * DSIZE)) {*/
			/*PUT(HDRP(oldptr), PACK(asize, 1));	*/
			/*PUT(FTRP(oldptr), PACK(asize, 1));*/
		/*oldptr = NEXT_BLKP(oldptr);*/
		/*PUT(HDRP(oldptr), PACK(csize - asize, 0));*/
		/*PUT(FTRP(oldptr), PACK(csize - asize, 0));*/
		/*insert_list(oldptr);*/
		/*} else {*/
			/*PUT(HDRP(oldptr), PACK(csize, 1));*/
			/*PUT(FTRP(oldptr), PACK(csize, 1));*/
		/*}*/
		
		/*return newptr;*/
	/*}*/

	/* 从heap的其他地方寻找 */
	newptr = mm_malloc(size);
	if (NULL == newptr)
		return NULL;
	memmove(newptr, oldptr, size);
	mm_free(oldptr);

	return newptr;
}
