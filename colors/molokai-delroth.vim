" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" Author: Pierre Bourdon <delroth@gmail.com> (modifications)
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
if has("nvim-0.10")
    " Restore classic Vim default highlight links (e.g. WinSeparator ->
    " VertSplit, NormalFloat -> Pmenu, @variable -> Identifier) instead of
    " Neovim 0.10+'s built-in colorscheme defaults.
    source $VIMRUNTIME/colors/vim.lua
endif
let g:colors_name="molokai-delroth"

if &t_Co > 255 || has("gui_running") || (has("termguicolors") && &termguicolors)
   hi Boolean         ctermfg=135               guifg=#af5fff
   hi Character       ctermfg=144               guifg=#afaf87
   hi Number          ctermfg=135               guifg=#af5fff
   hi String          ctermfg=144               guifg=#afaf87
   hi Conditional     ctermfg=204               guifg=#ff5f87               cterm=bold      gui=bold
   hi Constant        ctermfg=135               guifg=#af5fff               cterm=bold      gui=bold
   hi Cursor          ctermfg=16  ctermbg=253   guifg=#000000 guibg=#dadada
   hi Debug           ctermfg=225               guifg=#ffd7ff               cterm=bold      gui=bold
   hi Define          ctermfg=81                guifg=#5fd7ff
   hi Delimiter       ctermfg=241               guifg=#626262

   hi DiffAdd                     ctermbg=24                  guibg=#005f87
   hi DiffChange      ctermfg=181 ctermbg=239   guifg=#d7afaf guibg=#4e4e4e
   hi DiffDelete      ctermfg=162 ctermbg=53    guifg=#d70087 guibg=#5f005f cterm=NONE      gui=NONE
   hi DiffText                    ctermbg=102                 guibg=#878787 cterm=bold      gui=bold

   hi Directory       ctermfg=118               guifg=#87ff00               cterm=bold      gui=bold
   hi Error           ctermfg=219 ctermbg=89    guifg=#ffafff guibg=#87005f
   hi ErrorMsg        ctermfg=199 ctermbg=16    guifg=#ff00af guibg=#000000 cterm=bold      gui=bold
   hi Exception       ctermfg=118               guifg=#87ff00               cterm=bold      gui=bold
   hi Float           ctermfg=135               guifg=#af5fff
   hi FoldColumn      ctermfg=67  ctermbg=16    guifg=#5f87af guibg=#000000
   hi Folded          ctermfg=67  ctermbg=16    guifg=#5f87af guibg=#000000
   hi Function        ctermfg=118               guifg=#87ff00
   hi Identifier      ctermfg=208               guifg=#ff8700               cterm=NONE      gui=NONE
   hi Ignore          ctermfg=244 ctermbg=232   guifg=#808080 guibg=#080808
   hi IncSearch       ctermfg=193 ctermbg=16    guifg=#d7ffaf guibg=#000000

   hi Keyword         ctermfg=204               guifg=#ff5f87               cterm=bold      gui=bold
   hi Label           ctermfg=229               guifg=#ffffaf               cterm=NONE      gui=NONE
   hi Macro           ctermfg=193               guifg=#d7ffaf
   hi SpecialKey      ctermfg=81                guifg=#5fd7ff

   hi MatchParen      ctermfg=208 ctermbg=16    guifg=#ff8700 guibg=#000000 cterm=bold      gui=bold
   hi ModeMsg         ctermfg=229               guifg=#ffffaf
   hi MoreMsg         ctermfg=229               guifg=#ffffaf               cterm=NONE      gui=NONE
   hi Operator        ctermfg=204               guifg=#ff5f87

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16    guifg=#5fd7ff guibg=#000000
   hi PmenuSel        ctermfg=NONE ctermbg=244  guifg=NONE    guibg=#808080
   hi PmenuSbar                   ctermbg=232                 guibg=#080808
   hi PmenuThumb      ctermfg=81                guifg=#5fd7ff

   hi PreCondit       ctermfg=118               guifg=#87ff00               cterm=bold      gui=bold
   hi PreProc         ctermfg=118               guifg=#87ff00
   hi Question        ctermfg=81                guifg=#5fd7ff               cterm=NONE      gui=NONE
   hi Repeat          ctermfg=204               guifg=#ff5f87               cterm=bold      gui=bold
   hi Search          ctermfg=253 ctermbg=66    guifg=#dadada guibg=#5f8787

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235   guifg=#87ff00 guibg=#262626
   hi SpecialChar     ctermfg=161               guifg=#d7005f               cterm=bold      gui=bold
   hi SpecialComment  ctermfg=245               guifg=#8a8a8a               cterm=bold      gui=bold
   hi Special         ctermfg=81  ctermbg=232   guifg=#5fd7ff guibg=#080808
   hi SpecialKey      ctermfg=167               guifg=#d75f5f               cterm=bold      gui=bold

   hi Statement       ctermfg=204               guifg=#ff5f87               cterm=bold      gui=bold
   hi StatusLine      ctermfg=238 ctermbg=250   guifg=#444444 guibg=#bcbcbc
   hi StatusLineNC    ctermfg=234 ctermbg=244   guifg=#1c1c1c guibg=#808080
   hi StorageClass    ctermfg=208               guifg=#ff8700
   hi Structure       ctermfg=81                guifg=#5fd7ff
   hi Tag             ctermfg=161               guifg=#d7005f
   hi Title           ctermfg=166               guifg=#d75f00               cterm=NONE      gui=NONE
   hi Todo            ctermfg=231 ctermbg=232   guifg=#ffffff guibg=#080808 cterm=bold      gui=bold

   hi Typedef         ctermfg=81                guifg=#5fd7ff
   hi Type            ctermfg=107               guifg=#87af5f               cterm=NONE      gui=NONE
   hi Underlined      ctermfg=244               guifg=#808080               cterm=underline gui=underline

   hi VertSplit       ctermfg=244 ctermbg=232   guifg=#808080 guibg=#080808 cterm=bold      gui=bold
   hi VisualNOS       ctermfg=NONE ctermbg=238  guifg=NONE    guibg=#444444
   hi Visual          ctermfg=NONE ctermbg=235  guifg=NONE    guibg=#262626
   hi WarningMsg      ctermfg=231 ctermbg=238   guifg=#ffffff guibg=#444444 cterm=bold      gui=bold
   hi WildMenu        ctermfg=81  ctermbg=16    guifg=#5fd7ff guibg=#000000

   hi Normal          ctermfg=252 ctermbg=233   guifg=#d0d0d0 guibg=#121212
   hi Comment         ctermfg=59                guifg=#5f5f5f
   hi CursorLine                  ctermbg=234                 guibg=#1c1c1c cterm=NONE      gui=NONE
   hi CursorColumn                ctermbg=234                 guibg=#1c1c1c
   hi LineNr          ctermfg=250 ctermbg=234   guifg=#bcbcbc guibg=#1c1c1c
   hi NonText         ctermfg=166               guifg=#d75f00               cterm=bold      gui=bold

   hi ColorColumn     ctermfg=252 ctermbg=232   guifg=#d0d0d0 guibg=#080808
end
