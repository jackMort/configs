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
	highlight PMenu      cterm=NONE ctermbg=Yellow ctermfg=White
	highlight PMenuSel   cterm=bold ctermbg=DarkYellow ctermfg=White
	highlight PMenuSbar  cterm=bold ctermbg=DarkYellow
	highlight PMenuThumb cterm=bold ctermbg=Yellow
	highlight SpellBad   ctermbg=Red
	highlight SpellRare  ctermbg=Red
	highlight SpellLocal ctermbg=Red
	highlight SpellCap   ctermbg=Yellow
endif

highlight Normal        ctermfg=Yellow ctermbg=NONE
highlight Search        ctermfg=White ctermbg=Yellow cterm=bold
highlight Visual        ctermfg=White ctermbg=Magenta cterm=bold
highlight Cursor        ctermfg=Black ctermbg=Red cterm=bold
highlight Special       ctermfg=Yellow cterm=bold

highlight StatusLine    ctermfg=NONE ctermbg=NONE cterm=bold
highlight StatusLineNC  ctermfg=NONE ctermbg=NONE cterm=bold

highlight Statement     ctermfg=Yellow cterm=bold
highlight Type          ctermfg=Yellow cterm=bold
highlight Macro         ctermfg=DarkRed
highlight Identifier    ctermfg=White ctermbg=NONE cterm=bold
highlight Structure     ctermfg=DarkYellow
highlight Todo          ctermfg=Red ctermbg=NONE
highlight Comment       ctermfg=DarkYellow
highlight String        ctermfg=White ctermbg=NONE cterm=NONE
highlight Constant      ctermfg=Yellow cterm=bold
highlight LineNr        ctermfg=Yellow
highlight VertSplit     ctermfg=White ctermbg=NONE cterm=NONE

highlight Folded        ctermfg=Yellow ctermbg=Black cterm=NONE
highlight FoldColumn    ctermfg=Yellow ctermbg=Black cterm=NONE


