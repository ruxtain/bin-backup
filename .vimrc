" Basics Config {{{
" 注意: vimrc 不能用 source 命令，直接启动 vim 就好

" 四个空格代替tab
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set shortmess=atI
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

" 任何模式下直接进入normal模式
inoremap jk <esc>
vnoremap jk <esc> 

" 按下nn快速隐藏、显示行号，强得一比
noremap nn :set nu! nu?<cr>

" nmap <C-/> <Plug>NERDCommenterToggle

" 留出充分的空行给我要写的新行
noremap <C-o> o<cr><up>

" 无格式粘贴模式的切换
set pastetoggle=<F10>

" 在命令模式下，直接保存并退出。
"noremap X :x<cr> 
"noremap W :w<cr>
" 直接退出不保存
noremap q :q!<cr>

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

" Stuff for Scala {{{
" autocmd for Scala
function ScalaFile()
    let info = "// filename: ".expand("%")."\n"
                \."// datetime: ".strftime("%Y-%m-%d %H:%M")."\n"
                \."\n"
                \."object ".expand("%:r")." {\n"
                \."    def main(args: Array[String]): Unit = {\n"
                \."         \n"
                \."    }\n"
                \."}\n"
  silent put!=info
  " 移动光标到合理位置
  :normal kkllllllll
endfunction
autocmd BufNewFile *.scala call ScalaFile()

" scala 默认是2个空格缩进，我还是喜欢4个
:autocmd Filetype scala set softtabstop=4
:autocmd Filetype scala set ts=4
:autocmd Filetype scala set sw=4


"}}}

" Stuff for C {{{
" autocmd for C
augroup python
    autocmd!
    autocmd BufNewFile *.c :normal  i#include <stdio.h>
augroup end
" }}}

" Stuff for Java {{{
" autocmd for Java
function JavaFile()
    let info = "//: ".expand("%")."\n"
                \."// datetime: ".strftime("%Y-%m-%d %H:%M")."\n"
                \."\n"
                \."public class ".expand("%:r")." {\n"
                \."    public static void  main(String[] args) {\n"
                \."         \n"
                \."    }\n"
                \."}\n"
  silent put!=info
  " 移动光标到合理位置
  :normal kkllllllll
endfunction
autocmd BufNewFile *.java call JavaFile()

:autocmd Filetype java set softtabstop=4
:autocmd Filetype java set ts=4
:autocmd Filetype java set sw=4

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
