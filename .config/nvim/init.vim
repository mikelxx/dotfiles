syntax on
filetype indent plugin on

function! BootstrapPackages()
    execute '!' . 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

    if has("nvim")
        execute '!' . 'git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim'
    endif
endfunction

function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
endfunction

function! SetColorScheme(timer_id)
    if strftime('%H') < 20 || strftime('%H') > 8
        set background=light
        colo solarized
    else
        set background=dark
        colo gruber-darker
    endif
endfunction

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'cocateh/VimCompletesMe'
Plug 'cocateh/vim-gruber-darker'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
call plug#end()

if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
endif

set nocompatible
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
" set guicursor=n-v-c-i:block
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=tab:»\ ,trail:·
set list
set colorcolumn=81

if has("nvim")
    lua require('main')
    set runtimepath+=~/.config/nvim/lua

    set termguicolors
    set cursorline
    " call SetColorScheme(0)

    " call timer_start(900000, function('SetColorScheme'), {'repeat': -1})
endif

colo gruber-darker

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:rg_binary="/home/michal/.cargo/bin/rg"
let g:neovide_cursor_animation_length=0
let g:neovide_scale_factor=1.0
let g:fzf_layout = { 'down': '30%' }

autocmd FileType gitcommit set textwidth=72 textwidth=73
autocmd FileType c         set colorcolumn=81 tabstop=8 shiftwidth=8 noexpandtab
autocmd FileType cpp       set colorcolumn=101 tabstop=4 shiftwidth=4 expandtab
autocmd FileType rust      set colorcolumn=101 tabstop=4 shiftwidth=4 expandtab
autocmd FileType go        set colorcolumn=0 tabstop=8 shiftwidth=8 noexpandtab
autocmd FileType make      set colorcolumn=81 tabstop=8 shiftwidth=8 noexpandtab
autocmd FileType python    set colorcolumn=80 tabstop=4 shiftwidth=4 expandtab
autocmd BufWritePre * :%s/\s\+$//e

map <F5> :make <bar> :copen<CR>
nmap <C-w>; :copen<CR>
nmap <C-P> :FZF<CR>
noremap <C-ScrollWheelUp> :call ChangeScaleFactor(1.25)<CR>
noremap <C-ScrollWheelDown> :call ChangeScaleFactor(1/1.25)<CR>
nnoremap gr :Rg<CR>
