set nocompatible
syntax on
filetype indent plugin on

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'shaunsingh/nord.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'ajh17/VimCompletesMe'
Plug 'timakro/vim-yadi'
Plug 'frankier/vim-colors-solarized'
Plug 'cocateh/vim-gruber-darker'
Plug 'jremmen/vim-ripgrep'
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/goyo.vim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
endif

lua << END
require('lualine').setup {
    sections = {
        lualine_x = {
            'encoding',
            {
                'fileformat',
                symbols = {
                    unix = 'unix',
                    dos = 'dos',
                    mac = 'mac',
                }
            },
            'filetype'
        }
    }
}
END

" let g:onedark_config = {
"     \ 'style': 'darker',
" \}

" colo gruber-darker

set background=dark
colo solarized
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
set clipboard+=unnamedplus
set nowrap
set scrolloff=5

set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=81

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set textwidth=73

autocmd FileType cpp set colorcolumn=121

autocmd FileType go set tabstop=8
autocmd FileType go set shiftwidth=8
autocmd FileType go set noexpandtab

nnoremap gr :Rg<CR>
nmap <C-w>; :copen<CR>
map <F5> :make <bar> :copen<CR>

let g:neovide_cursor_animation_length=0
let g:rg_binary="/home/michal/.cargo/bin/rg"
set guifont=JetBrains\ Mono:h9
