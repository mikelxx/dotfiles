set nocompatible
syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'maralla/completor.vim'
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'

call plug#end()

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

if has("gui_running")
	set lines=40 columns=160
	set guifont=Hack\ 9
endif

if has("nvim")
	set guifont=SF\ Mono:h9
endif

set wildmenu
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
colorscheme jjstyle2
let g:airline_powerline_fonts = 1
set number
let g:ale_linters = {
			\'javascript': ['eslint'],
			\}
set path+=**
