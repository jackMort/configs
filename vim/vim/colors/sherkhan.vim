" Vim color file
" Maintainer: Lech Twarog <lech.twarog@gmail.com>
" Version: 1.0
" URL: http://capsulecorp.pl/vim/sherkhan.vim


""" Init
set background=dark
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "sherkhan"

if v:version >= 700
	highlight PMenu      cterm=NONE ctermbg=Blue ctermfg=White
	highlight PMenuSel   cterm=bold ctermbg=DarkBlue ctermfg=White
	highlight PMenuSbar  cterm=bold ctermbg=DarkBlue
	highlight PMenuThumb cterm=bold ctermbg=Yellow
	highlight SpellBad   ctermbg=Red
	highlight SpellRare  ctermbg=Red
	highlight SpellLocal ctermbg=Red
	highlight SpellCap   ctermbg=Yellow
endif

highlight Normal        ctermfg=Blue ctermbg=NONE
highlight Search        ctermfg=White ctermbg=Blue cterm=bold
highlight Visual        ctermfg=White ctermbg=Magenta cterm=bold
highlight Cursor        ctermfg=Black ctermbg=Red cterm=bold
highlight Special       ctermfg=Blue cterm=bold

highlight StatusLine    ctermfg=NONE ctermbg=NONE cterm=bold
highlight StatusLineNC  ctermfg=NONE ctermbg=NONE cterm=bold

highlight Statement     ctermfg=Blue cterm=bold
highlight Type          ctermfg=Blue cterm=bold
highlight Macro         ctermfg=DarkRed
highlight Identifier    ctermfg=White ctermbg=NONE cterm=bold
highlight Structure     ctermfg=DarkBlue
highlight Todo          ctermfg=Red ctermbg=NONE
highlight Comment       ctermfg=DarkBlue
highlight String        ctermfg=White ctermbg=NONE cterm=NONE
highlight Constant      ctermfg=Blue cterm=bold
highlight LineNr        ctermfg=Blue
highlight VertSplit     ctermfg=White ctermbg=NONE cterm=NONE

highlight Folded        ctermfg=Blue ctermbg=Black cterm=NONE
highlight FoldColumn    ctermfg=Blue ctermbg=Black cterm=NONE


