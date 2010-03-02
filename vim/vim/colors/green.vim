" Vim color file
" Maintainer: -=Warl0ck=- <warl0ck(at)eml.cc>
" Version: 0.1

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "green"

hi Normal       guifg=#10AA10 guibg=#000000 ctermfg=darkgreen

" Search
"--------------------------------------------------
" hi IncSearch    gui=none guifg=#60ffff guibg=#BC0909
" hi Search       gui=NONE guifg=#ffffff guibg=#BC0909
"-------------------------------------------------- 

" Messages
hi ErrorMsg     gui=BOLD guifg=#808080 guibg=darkred
hi WarningMsg   gui=BOLD guifg=#808080 guibg=darkred
hi ModeMsg      gui=NONE guifg=#2BC22A  guibg=NONE
hi MoreMsg      gui=NONE guifg=#ffc0ff guibg=NONE
hi Question     gui=NONE guifg=#ffff60 guibg=NONE

" Split area

"  hi StatusLine gui=NONE guifg=#000000 guibg=#d0d0e0 ctermfg=11 ctermbg=12 cterm=italic
"  hi StatusLineNC gui=NONE guifg=#606080 guibg=#d0d0e0 ctermfg=black ctermbg=green cterm=none
"  hi VertSplit    gui=NONE guifg=#606080 guibg=#d0d0e0 ctermfg=black ctermbg=green cterm=none

hi StatusLine gui=NONE guifg=#2BC22A guibg=#1C6B1C ctermfg=2 ctermbg=11 cterm=bold
hi StatusLineNC gui=NONE guifg=#2BC22A guibg=#1C6B1C ctermfg=green ctermbg=black cterm=bold
hi VertSplit    gui=NONE guifg=#2BC22A guibg=#1C6B1C ctermfg=green ctermbg=black cterm=bold


hi WildMenu     gui=NONE guifg=#00FF00 guibg=#000000

" Diff
hi DiffText     gui=UNDERLINE guifg=#ffff00 guibg=#000000
hi DiffChange   gui=NONE guifg=#ffffff guibg=#000000
hi DiffDelete   gui=NONE guifg=#60ff60 guibg=#000000
hi DiffAdd      gui=NONE guifg=#60ff60 guibg=#000000

" Cursor
hi Cursor       gui=NONE guifg=#ffffff guibg=#d86020
hi lCursor      gui=NONE guifg=#ffffff guibg=#e000b0
hi CursorIM     gui=NONE guifg=#ffffff guibg=#e000b0

" Fold
hi Folded       gui=NONE guifg=#ffffff guibg=#0BA118
" hi Folded       gui=NONE guifg=#ffffff guibg=#2080d0
hi FoldColumn   gui=NONE guifg=#60e0e0 guibg=#000000

" Other
hi Directory    gui=NONE guifg=#00e0ff guibg=NONE 
hi LineNr       gui=BOLD guifg=#00AA00 guibg=NONE ctermfg=green 
hi NonText      gui=BOLD guifg=#00AA00 guibg=#000000 ctermfg=darkgreen
hi SpecialKey   gui=NONE guifg=#e00aa0 guibg=NONE 
hi Title        gui=BOLD guifg=#21CC21 guibg=NONE
hi Visual       gui=NONE guifg=#000000 guibg=#0EB31A

" Syntax group
hi String       gui=NONE guifg=#10AA10 guibg=NONE ctermfg=darkgreen
hi Comment      gui=NONE guifg=#BA702C guibg=NONE ctermfg=brown 
hi Constant     gui=NONE guifg=grey guibg=NONE ctermfg=grey
hi Error        gui=BOLD guifg=white  guibg=red ctermfg=white ctermbg=red 
hi Identifier   gui=NONE guifg=darkcyan guibg=NONE ctermfg=darkcyan
hi Ignore       gui=NONE guifg=darkgreen guibg=NONE ctermfg=darkgreen
hi PreProc      gui=NONE guifg=#4555FF guibg=NONE ctermfg=blue
hi Special      gui=NONE guifg=darkgrey guibg=NONE ctermfg=darkgrey
hi Statement    gui=NONE guifg=yellow guibg=NONE ctermfg=yellow 
hi Todo         gui=BOLD,UNDERLINE guifg=lightcyan guibg=NONE ctermfg=lightcyan ctermbg=black
hi Type         gui=NONE guifg=#21CC21 guibg=NONE ctermfg=lightgreen
hi Underlined   gui=UNDERLINE guifg=#663300 guibg=NONE ctermfg=red

