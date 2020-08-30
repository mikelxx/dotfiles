set nocompatible
syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'ajh17/VimCompletesMe'
Plug 'luochen1990/rainbow'
Plug 'dense-analysis/ale'
Plug 'laxhh/vim-gruber-darker'

call plug#end()

colorscheme gruber-darker

set termguicolors
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set wildmenu
set tabstop=4
set shiftwidth=4
set expandtab
let g:rainbow_active = 1
set relativenumber
set number
let g:ale_linters = {
			\'javascript': ['eslint'],
			\'asm': [],
			\}
set path+=**
set backspace=indent,eol,start
