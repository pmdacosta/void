"" clear out any previous highlighting
hi clear
"" if vim is v5.8 or greater, reset syntax
if version > 580
  if exists("syntax_on")
    syntax reset
  endif
endif

"" give it a name and set the background
let colors_name="grey"
set background=dark


hi Cursor          guifg=#00FF00    guibg=#000000    ctermfg=green    ctermbg=black    gui=NONE         cterm=NONE
hi IncSearch       guifg=#000000    guibg=#bfbfbf    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Search          guifg=#000000    guibg=#bfbfbf    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Visual          guifg=#000000    guibg=#bfbfbf
hi VisualNOS       guifg=#000000    guibg=#bfbfbf

hi CursorColumn    guifg=#bfbfbf    guibg=#191970    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi CursorLine                       guibg=#191970                                      gui=NONE         cterm=NONE
hi CursorLineNr    guifg=#CDAA7F    guibg=#191970                                      gui=NONE         cterm=NONE

hi Pmenu           guifg=#000000    guibg=#b8860b    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi PmenuSbar       guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi PmenuSel        guifg=#000000    guibg=#bfbfbf    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE
hi PmenuThumb      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE

hi Comment         guifg=#7f7f7f    guibg=#000000    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE

hi String          guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi DiffChange      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi DiffDelete      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi DiffText        guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Directory       guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Error           guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Folded          guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Function        guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Identifier      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Ignore          guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Label           guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi LineNr          guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi MatchParen      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi ModeMsg         guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi MoreMsg         guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi NonText         guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Normal          guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi PreProc         guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Special         guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi SpecialKey      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE
hi Statement       guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi StatusLine      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi StatusLineNC    guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=ITALIC       cterm=NONE
hi StorageClass    guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Structure       guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi TabLine         guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi TabLineFill     guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi TabLineSel      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Title           guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Type            guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi TypeDef         guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Underlined      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=UNDERLINE    cterm=UNDERLINE
hi WarningMsg      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi WildMenu        guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi cucumberTags    guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi htmlTagN        guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi rubySymbol      guifg=#bfbfbf    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Constant        guifg=#bfbfbf    guibg=#000000    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
hi Number          guifg=#bfbfbf    guibg=#000000    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE

hi StatusLine      guifg=#000000    guibg=#bfbfbf
hi StatusLineNC    guifg=#000000    guibg=#bfbfbf
hi ErrorMsg        guifg=#000000    guibg=#cd7da0
hi VertSplit       guifg=#000000    guibg=#bfbfbf    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE

hi Todo            guifg=#FF0000    guibg=#000000    ctermfg=grey     ctermbg=black    gui=NONE         cterm=NONE
hi Todo            guifg=#FF0000    guibg=#000000    ctermfg=grey     ctermbg=black    gui=UNDERLINE    cterm=UNDERLINE

hi DiffAdd         guifg=#FFFFFF    guibg=#000000    ctermfg=white    ctermbg=black    gui=NONE         cterm=NONE
