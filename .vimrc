set nocompatible
syntax on
filetype indent plugin on
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
if has("gui_running")
	set lines=40 columns=160
	set guifont=Hack\ 9
endif
if has("nvim")
	set guifont=Hack:h9
endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
colorscheme afterglow
let g:airline_powerline_fonts = 1
