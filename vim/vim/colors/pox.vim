"-----------------------------------------------------
" Vim color file
" Maintainer:   Piotr Ozarowski <ozarow@gmail.com>
" Last Change:  2006-05-24 20:13:00 GMT+2
" Version:      2.1
" URL:          http://www.ozarowski.pl/komp/vim.php
"-----------------------------------------------------

" czcionka
"set guifont="Monospace 8"
"set guifont="Andale Mono 8"
set gfn=Bitstream\ Vera\ Sans\ Mono\ 8

set background=light

" kasuj poprzednie ustawienia
hi clear
if exists("syntax_on")
        syntax reset
endif

" ta linia musi byc nizej"}}}
let g:colors_name="POX"

hi Normal       gui=none      guibg=#1f2030 guifg=Green
"hi Normal      gui=none        guibg=#1f3098 guifg=Green
hi Constant     guifg=Red   guibg=bg
hi Comment      gui=italic   guifg=DarkCyan ctermfg=Blue
hi Identifier   guifg=#40ffff
hi Statement    guifg=#ffa500
"hi Special     guifg=#ff80ff
hi Special      guifg=Purple
hi Type         guifg=Green
hi Visual       ctermbg=Yellow        guifg=Yellow   guibg=RoyalBlue4 gui=none
hi Cursor       guibg=Yellow  guifg=Black      gui=bold
hi String       guifg=Red
hi ToDo         guibg=Red      guifg=Yellow
hi Search       ctermbg=Yellow        ctermfg=Red    guibg=Yellow guifg=Red
"hi LineNr       guibg=#1f3560   guifg=Yellow
"hi Folded      guibg=DarkGreen guifg=Green
"hi Folded      guibg=#1f3560   guifg=RoyalBlue 
hi Folded       ctermbg=Cyan  ctermfg=Blue     guibg=#1a2c4f       guifg=RoyalBlue
hi FoldColumn   ctermbg=Blue      ctermfg=Yellow       guibg=#1a2c4f guifg=RoyalBlue
hi LineNr       ctermbg=NONE  ctermfg=DarkYellow       guibg=#1a2c4f guifg=Yellow

hi StatusLine   ctermfg=Green     guifg=Green guibg=DarkGreen
hi StatusLineNC ctermfg=DarkGreen       guifg=DarkGreen guibg=Green
hi CursorLine   guibg=#1a2c4f
hi CursorColumn guibg=#1a2c4f
hi VertSplit    guifg=DarkGreen guibg=Green
hi ModeMsg      guibg=DarkGreen guifg=Green

hi link PreProc Special
hi link String Constant
hi MatchParen   term=reverse      ctermbg=Green        ctermfg=Yellow guifg=Green     guibg=Blue

" DIFF
hi DiffChange   term=bold       ctermbg=Blue  guibg=RoyalBlue4
hi DiffAdd      term=bold    ctermbg=LightBlue  guibg=RoyalBlue
hi DiffText     term=reverse        cterm=bold     ctermbg=Yellow      gui=bold     guibg=RoyalBlue
hi DiffDelete   term=bold ctermbg=Red     ctermfg=Yellow      guibg=Red    guifg=yellow

" taby (VIM7)
hi TabLineFill  ctermfg=DarkBlue guifg=DarkGreen
hi TabLineSel   ctermbg=Cyan    ctermfg=Yellow     guibg=Green guifg=DarkGreen
hi TabLine      ctermbg=Blue       ctermfg=White guibg=DarkGreen guifg=Green

" lista uzupeĹ�niania
hi Pmenu        ctermbg=DarkGreen ctermfg=Green guibg=DarkGreen guifg=Green
hi PmenuSel     ctermfg=Yellow ctermbg=Green guibg=Green guifg=DarkGreen
hi PmenuSbar    ctermbg=Green guibg=DarkGreen
hi PmenuThumb   ctermfg=Green guifg=Green

