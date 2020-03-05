set nocompatible
syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maralla/completor.vim'
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'

call plug#end()

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set wildmenu
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set number
set backspace=indent,eol,start
let g:ale_linters = {
			\'javascript': ['eslint'],
			\}
set path+=**
