set nocompatible
syntax on
filetype indent plugin on

"call plug#begin('~/.vim/plugged')
"Plug 'editorconfig/editorconfig-vim'
"Plug 'sheerun/vim-polyglot'
"Plug 'ajh17/VimCompletesMe'
"call plug#end()

if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
endif

set incsearch
set termguicolors
set hlsearch
set ruler
set ai
set wildmenu
set number
set path+=**
set backspace=indent,eol,start
set mouse=a
set colorcolumn=80
set guicursor=a:blinkon0

set tabstop=4
set shiftwidth=4
set expandtab
