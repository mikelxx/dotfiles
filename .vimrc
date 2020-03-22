set nocompatible
syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'ajh17/VimCompletesMe'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

call plug#end()

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set wildmenu
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set termguicolors
set relativenumber
let g:ale_linters = {
			\'javascript': ['eslint'],
			\'python': ['flake8'],
			\}
set path+=**
set backspace=indent,eol,start
