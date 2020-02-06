set nocompatible
syntax on
filetype indent plugin on
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
if has("gui_running")
	set lines=35 columns=100
	set guifont=Ubuntu\ Mono 
endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
colorscheme afterglow
