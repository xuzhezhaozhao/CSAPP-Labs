let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
imap <silent> <expr> <F5> (pumvisible() ? "\<Plug>LookupFileCE" : "")."\\<Plug>LookupFile"
inoremap <Plug>LookupFileCE 
inoremap <silent> <C-Tab> =UltiSnips_ListSnippets()
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
noremap  h
xnoremap 	 :call UltiSnips_SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips_ExpandSnippet()
xnoremap <NL> j
nnoremap <NL> j
snoremap <silent> <NL> :call UltiSnips_JumpForwards()
onoremap <NL> j
xnoremap  k
nnoremap  k
snoremap <silent>  :call UltiSnips_JumpBackwards()
onoremap  k
noremap  l
vmap  :update
nmap  :update
nmap # <Plug>MarkSearchPrev
nmap * <Plug>MarkSearchNext
map ,mbt <Plug>TMiniBufExplorer
map ,mbu <Plug>UMiniBufExplorer
map ,mbc <Plug>CMiniBufExplorer
map ,mbe <Plug>MiniBufExplorer
nmap ,? <Plug>MarkSearchAnyPrev
nmap ,/ <Plug>MarkSearchAnyNext
nmap ,# <Plug>MarkSearchCurrentPrev
nmap ,* <Plug>MarkSearchCurrentNext
nmap ,n <Plug>MarkClear
xmap ,r <Plug>MarkRegex
nmap ,r <Plug>MarkRegex
xmap ,m <Plug>MarkSet
nmap ,m <Plug>MarkSet
nmap <silent> ,ig <Plug>IndentGuidesToggle
nnoremap <silent> ,b :CommandTBuffer
nmap ,ihn :IHN
nmap ,is :IHS:A
nmap ,ih :IHS
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
vmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
vmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
map ,ch :call SetColorColumn()
nnoremap ,t : tabe
nnoremap ,k k
nnoremap ,j j
nnoremap ,h h
nnoremap ,l l
nmap <silent> ,lw :LUWalk
nmap <silent> ,ll :LUBufs
nmap <silent> ,lk :LUTags
map <silent> ,ee :e ~/.vimrc
map <silent> ,ss :source ~/.vimrc
map fg : Dox
nmap gx <Plug>NetrwBrowseX
map <silent> mm <Plug>Vm_toggle_sign 
snoremap <silent> <C-Tab> :call UltiSnips_ListSnippets()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-F2> <Plug>Vm_goto_prev_sign
map <F2> <Plug>Vm_goto_next_sign
map <C-F2> <Plug>Vm_toggle_sign
noremap <C-Right> l
noremap <C-Left> h
noremap <C-Up> k
noremap <C-Down> j
nnoremap <silent> <Plug>MarkSearchOrAnyPrev :if !mark#SearchNext(1,'mark#SearchAnyMark')|execute 'normal! #zv'|endif
nnoremap <silent> <Plug>MarkSearchOrAnyNext :if !mark#SearchNext(0,'mark#SearchAnyMark')|execute 'normal! *zv'|endif
nnoremap <silent> <Plug>MarkSearchOrCurPrev :if !mark#SearchNext(1,'mark#SearchCurrentMark')|execute 'normal! #zv'|endif
nnoremap <silent> <Plug>MarkSearchOrCurNext :if !mark#SearchNext(0,'mark#SearchCurrentMark')|execute 'normal! *zv'|endif
nnoremap <silent> <Plug>MarkSearchPrev :if !mark#SearchNext(1)|execute 'normal! #zv'|endif
nnoremap <silent> <Plug>MarkSearchNext :if !mark#SearchNext(0)|execute 'normal! *zv'|endif
nnoremap <silent> <Plug>MarkSearchAnyPrev :call mark#SearchAnyMark(1)
nnoremap <silent> <Plug>MarkSearchAnyNext :call mark#SearchAnyMark(0)
nnoremap <silent> <Plug>MarkSearchCurrentPrev :call mark#SearchCurrentMark(1)
nnoremap <silent> <Plug>MarkSearchCurrentNext :call mark#SearchCurrentMark(0)
nnoremap <silent> <Plug>MarkToggle :call mark#Toggle()
nnoremap <silent> <Plug>MarkAllClear :call mark#ClearAll()
nnoremap <silent> <Plug>MarkClear :if !mark#DoMark(v:count, (v:count ? '' : mark#CurrentMark()[0]))|execute "normal! \<C-\>\<C-n>\<Esc>"|endif
vnoremap <silent> <Plug>MarkRegex :call mark#MarkRegex(mark#GetVisualSelectionAsRegexp())
nnoremap <silent> <Plug>MarkRegex :call mark#MarkRegex('')
vnoremap <silent> <Plug>MarkSet :if !mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralPattern())|execute "normal! \<C-\>\<C-n>\<Esc>"|endif
nnoremap <silent> <Plug>MarkSet :if !mark#MarkCurrentWord(v:count)|execute "normal! \<C-\>\<C-n>\<Esc>"|endif
nmap <silent> <F5> <Plug>LookupFile
nnoremap <silent> <F11> :call conque_term#exec_file()
snoremap <silent> <BS> c
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./
nmap <F8> :TagbarToggle 
map <F3> :silent! Tlist "按下F3就可以呼出了
inoremap <silent> 	 =UltiSnips_ExpandSnippet()
inoremap <silent> <NL> =UltiSnips_JumpForwards()
inoremap <silent>  =UltiSnips_JumpBackwards()
inoremap <expr>  pumvisible()?"\":"\"
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
imap  :update
inoremap <expr>  pumvisible()?"\":"\" 
imap ,ihn :IHN
imap ,is :IHS:A
imap ,ih :IHS
imap itn int
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=2
set fileencodings=utf-8,gb2312,gbk,gb18030
set guifont=Bitstream_Vera_Sans_Mono:h9:cANSI
set guifontwide=幼圆:h10:cGB2312
set helplang=en
set hlsearch
set incsearch
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/ultisnips_rep
set showcmd
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set visualbell
set whichwrap=b,s,<,>,[,]
set window=20
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 bomb.s
args bomb.s
edit bomb.s
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'asm'
setlocal filetype=asm
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'asm'
setlocal syntax=asm
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 307 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
307
normal! 09l
lcd ~/
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
