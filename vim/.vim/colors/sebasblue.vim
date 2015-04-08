set background=light
highlight clear
syntax reset

let colors_name = "sebasblue"

" -------------------------------------------------------------------------------------------------------------

hi Normal          cterm=NONE      ctermfg=Gray                        gui=NONE      guifg=#444444 guibg=#eeeeee
hi NonText         cterm=NONE      ctermfg=DarkBlue                    gui=NONE      guifg=#000000 guibg=#eeeeee
hi SpecialKey      cterm=NONE      ctermfg=White                       gui=NONE      guifg=#000000 guibg=#eeeeee

hi Cursor          cterm=NONE      ctermfg=White     ctermbg=Gray      gui=NONE      guifg=#eeeeee guibg=Black
hi CursorIM        cterm=NONE      ctermfg=White     ctermbg=Gray      gui=NONE      guifg=#eeeeee guibg=Black
hi Visual          cterm=NONE                        ctermbg=Blue      gui=NONE                    guibg=#cccccc
hi VisualNOS       cterm=NONE                        ctermbg=Blue      gui=NONE                    guibg=#cccccc

hi LineNr          cterm=NONE      ctermfg=DarkGray                    gui=NONE      guifg=#888888 guibg=#dddddd
hi VertSplit       cterm=NONE      ctermfg=Blue      ctermbg=Blue      gui=NONE      guifg=#888888 guibg=#dddddd
hi StatusLine      cterm=NONE      ctermfg=White     ctermbg=Blue      gui=NONE      guifg=#444444 guibg=#dddddd
hi StatusLineNC    cterm=NONE      ctermfg=Blue      ctermbg=Blue      gui=NONE      guifg=#888888 guibg=#dddddd

hi Question        cterm=NONE      ctermfg=White     ctermbg=Blue      gui=NONE      guifg=#000000 guibg=#eeeeee
hi ErrorMsg        cterm=NONE      ctermfg=White     ctermbg=Blue      gui=underline guifg=#a00000 guibg=#ffdddd
hi WarningMsg      cterm=NONE      ctermfg=LightBlue ctermbg=Blue      gui=NONE      guifg=#000000 guibg=#eeeeee
hi ModeMsg         cterm=NONE      ctermfg=Blue                        gui=NONE      guifg=#000000 guibg=#eeeeee
hi MoreMsg         cterm=NONE      ctermfg=Blue                        gui=NONE      guifg=#000000 guibg=#eeeeee
hi Title           cterm=NONE      ctermfg=Blue                        gui=NONE      guifg=#000000 guibg=#eeeeee

hi IncSearch       cterm=NONE      ctermfg=Gray      ctermbg=Blue      gui=NONE      guifg=#a0a0c0 guibg=#ddddff
hi Search          cterm=NONE      ctermfg=White     ctermbg=Blue      gui=underline guifg=#6060c0 guibg=#ddddff

hi SpellBad        cterm=NONE      ctermfg=Red       ctermbg=DarkGray  gui=underline guifg=#c04040 guibg=#ffdddd
hi SpellCap        cterm=NONE      ctermfg=Red       ctermbg=DarkGray  gui=underline guifg=#c04040 guibg=#ffdddd
hi SpellLocal      cterm=NONE      ctermfg=Red       ctermbg=DarkGray  gui=underline guifg=#c04040 guibg=#ffdddd
hi SpellRare       cterm=NONE      ctermfg=Red       ctermbg=DarkGray  gui=underline guifg=#c04040 guibg=#ffdddd

"hi DiffAd0        cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi DiffChange     cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi DiffDelete     cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi DiffText       cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

hi Folded          cterm=NONE      ctermfg=DarkGray  ctermbg=Black     gui=NONE      guifg=#000000 guibg=#eeeeee
"hi FoldColumn     cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi SignColumn     cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

"hi Directory      cterm=NONE      ctermfg=Blue                        gui=NONE      guifg=#000000 guibg=#eeeeee
"hi WildMenu       cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

"hi Menu           cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Scrollbar      cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Tooltip        cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

" -------------------------------------------------------------------------------------------------------------

hi Comment         cterm=NONE      ctermfg=DarkGray                    gui=italic    guifg=#aaaaaa guibg=#eeeeee

hi Constant        cterm=NONE      ctermfg=Blue                        gui=NONE      guifg=#6060ff guibg=#eeeeee
"hi String         cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Character      cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Number         cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Boolean        cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Float          cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

hi Identifier      cterm=NONE      ctermfg=DarkCyan                    gui=NONE      guifg=#00a0a0 guibg=#eeeeee
"hi Function       cterm=NONE      ctermfg=Green                       gui=NONE      guifg=#000000 guibg=#eeeeee

hi Statement       cterm=NONE      ctermfg=White                       gui=bold      guifg=#000080 guibg=#eeeeee
"hi Conditional    cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Repeat         cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Label          cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Operator       cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Keyword        cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Exception      cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

hi PreProc         cterm=NONE      ctermfg=DarkBlue                    gui=NONE      guifg=#00aacc guibg=#eeeeee
"hi Include        cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Define         cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Macro          cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi PreCondit      cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

hi Type            cterm=NONE      ctermfg=White                       gui=bold      guifg=#000080 guibg=#eeeeee
"hi StorageClass   cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Structure      cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Typedef        cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

hi Special         cterm=NONE      ctermfg=Cyan                        gui=NONE      guifg=#006060 guibg=#eeeeee
"hi SpecialChar    cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Tag            cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
hi Delimiter       cterm=NONE      ctermfg=White                       gui=NONE      guifg=#000080 guibg=#eeeeee
"hi SpecialComment cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Debug          cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

"hi Underlined     cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee
"hi Ignore         cterm=NONE      ctermfg=LightGray                   gui=NONE      guifg=#000000 guibg=#eeeeee

hi Error           cterm=NONE      ctermfg=Red       ctermbg=Red       gui=underline guifg=#ff0000 guibg=#eeeeee
hi Todo            cterm=NONE      ctermfg=Cyan                        gui=underline guifg=#000000 guibg=#eeeeee
