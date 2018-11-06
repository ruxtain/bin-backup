" Basic Syntax and Indent {{{

set shortmess=atI " 不提示乌干达
filetype plugin indent on
set nobackup 
" give up features of Vi
set nocompatible
let mapleader=","
" the famous color scheme: molokai, named after an island of Hawaii
colorscheme default
" show line number
set number
" show cursor position
set ruler
" highlight code
syntax on

" autoindent basically for python, partly for c/java
" make a tab's length = 4
set tabstop=4
" 
set softtabstop=4
set shiftwidth=4
"set autoindent
set smartindent
" turn tab into spaces
set expandtab
"set cindent
" easier way to enter normal mode
inoremap jk <esc>
vnoremap jk <esc> 

" 留出充分的空行给我要写的新行
noremap <C-o> o<cr><up>

" 无格式粘贴模式的切换
set pastetoggle=<F10>

" 在命令模式下，直接保存并退出。
"noremap X :x<cr> 
"noremap W :w<cr>
"nnoremap q :q<cr>

" }}}

"Basic File Management {{{
" open this file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" sourcing mapping, i.e. apply the changes in this file,
" without re-open the file being editted
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" Vimscript file settings ---------------------- {{{
" use za to fold or unflod code block (try to make it terse)
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" complete automatically {{{
" complete braces and parantheses, etc.
"inoremap { {}<esc>i<cr><esc>V<O
inoremap {<cr> {<cr>}<esc>O
nnoremap <leader>i if<space>__name__<space>==<space>'__main__':<cr><space><space><space><space>main()
" }}}

" Stuff for Python {{{
" autocmd for Python
augroup python
    autocmd!
    autocmd BufNewFile *.py :normal  i#! /Users/michael/anaconda3/bin/python3 
augroup end
" }}}

" Stuff for C {{{
" autocmd for C
augroup python
    autocmd!
    autocmd BufNewFile *.c :normal  i#include <stdio.h>
augroup end
" }}}

" Stuff for Java {{{
" autocmd for Java
augroup java
    autocmd!
    autocmd FileType java :iabbrev prt System.out.println
augroup end
" }}}

" Reduce Tap-time {{{
" clear the stuff inside of parentheses
onoremap p i(
" the functions I wanna write:
" to complete words written in my file based on ctrl+n.
inoremap <F7> <esc>:w!<cr>:!./
" make a newline and some space for it
nnoremap <leader>o i<cr><cr><esc>k^a
" }}}
