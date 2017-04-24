" Vim color scheme                           
" Name: basal
" Author: Jethro Van Thuyne <post@jethro.be>
" Version: 1.0.0
" Last Change: 2016 June 14

hi clear
syntax reset
let g:colors_name = "basal"

hi Normal ctermfg=255 ctermbg=0
hi Comment ctermfg=248 
hi Constant ctermfg=214 ctermbg=52
hi String ctermfg=200 cterm=NONE
hi Statement ctermfg=230 cterm=NONE
hi Type ctermfg=154 cterm=NONE
hi Identifier ctermfg=33 cterm=NONE
hi PreProc ctermfg=33 cterm=NONE
hi makeCommands ctermfg=255
hi makeSpecial ctermfg=214
hi LineNr ctermfg=240

hi FoldColumn term=NONE cterm=NONE ctermbg=NONE 
hi VertSplit cterm=NONE ctermfg=240
hi StatusLine   cterm=NONE ctermfg=226 ctermbg=234
hi StatusLineNC cterm=NONE ctermfg=240 ctermbg=232
