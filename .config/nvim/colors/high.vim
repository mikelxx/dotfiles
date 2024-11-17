highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name="high"

" colors
if exists("gui_running") || &t_Co == 256
    hi NonText      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#52075e guibg=NONE
    hi Normal       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#b9d4ca guibg=#13002f " ok
    hi Keyword      cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#77cfff guibg=NONE    " ok
    hi Identifier   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#b9d4ca guibg=NONE    " ok
    hi Statement    cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#77cfff guibg=NONE    " ok
    hi String       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffa753 guibg=NONE    " ok
    "hi Special      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#73c936 guibg=NONE
    "hi SpecialChar  cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#95a99f guibg=NONE
    hi Function     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#b9d4ca guibg=NONE    " ok
    hi Typedef      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#96bb8d guibg=NONE    " ok
    hi Number       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#b9d4ca guibg=NONE    " ok
    hi Comment      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffa753 guibg=NONE    " ok
    hi Search       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#000000 guibg=#e319be " ok
    hi Visual       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE    guibg=#3b3149 " ok
    hi Structure    cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#96bb8d guibg=NONE    " ok
    hi Define       cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#95a99f guibg=NONE    " ok
    " hi PreCondit    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#95a99f guibg=NONE
    hi PreProc      cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#95a99f guibg=NONE    " ok
    hi Include      cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#95a99f guibg=NONE    " ok
    hi Boolean      cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#77cfff guibg=NONE
    hi Float        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#95a99f guibg=NONE
    hi Character    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#95a99f guibg=NONE    " ok
    hi Type         cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#96bb8d guibg=NONE    " ok
    hi Constant     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#6aff95 guibg=NONE    " ok
    hi Title        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#96a6c8 guibg=NONE
    hi StatusLine   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#acffff guibg=#590667 " ok
    hi StatusLineNC cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#acffff guibg=#000000 " ok
    hi LineNr       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#52494e guibg=NONE
    hi Warning      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#f43841 guibg=NONE
    hi Error        cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#f43841 guibg=NONE
    hi WarningMsg   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#f43841 guibg=NONE
    hi ErrorMsg     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#f43841 guibg=NONE
    hi DiffDelete   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#f43841 guibg=NONE
    hi DiffAdd      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#73c936 guibg=NONE
    hi StorageClass cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#77cfff guibg=NONE
    hi cStorageClass cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=#77cfff guibg=NONE
    hi Pmenu        cterm=bold ctermfg=NONE ctermbg=NONE gui=NONE guifg=#e4e4ef guibg=#282828
    hi PmenuSel     cterm=bold ctermfg=NONE ctermbg=NONE gui=NONE guifg=#e4e4ef guibg=#101010
    hi PmenuSbar    cterm=bold ctermfg=NONE ctermbg=NONE gui=NONE guifg=#101010 guibg=#453d41
    hi PmenuThumb   cterm=bold ctermfg=NONE ctermbg=NONE gui=NONE guifg=#453d41 guibg=#453d41
    hi cTodo        cterm=NONE ctermfg=NONE ctermbg=NONE gui=bold guifg=#ffdd33 guibg=NONE
    hi ColorColumn  cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE    guibg=#282828
    hi CursorLine   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE    guibg=#46304a
    hi Cursor       cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffdd33 guibg=#ffdd33
    hi SignColumn   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#282828 guibg=#181818
    hi VertSplit    cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#52494e guibg=#181818
    hi TabLine      cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#e4e4ef guibg=#101010
    hi TabLineFill  cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE    guibg=#101010
    hi TabLineSel   cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ffdd33 guibg=#181818
    hi jaiClass     cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#b9d4ca guibg=NONE     " ok
endif

if exists("nvim")
    hi DiagnosticVirtualTextHint cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#52494e guibg=NONE
endif
