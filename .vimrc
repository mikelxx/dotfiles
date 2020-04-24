set nocompatible
syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajh17/VimCompletesMe'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'fugalh/desert.vim'
Plug 'phanviet/vim-monokai-pro'

call plug#end()

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set wildmenu
" set termguicolors
set relativenumber
let g:ale_linters = {
			\'javascript': ['eslint'],
			\'asm': [],
			\}
set path+=**
set backspace=indent,eol,start
