" Editor Theme

let g:gruvbox_colors={'dark0_hard': '#0A0E14'}
let g:gruvbox_improved_warnings=1
let g:gruvbox_invert_selection=0
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

colorscheme onehalfdark

" Change bad word color to red with underline
hi clear SpellBad
hi SpellBad guifg=red gui=underline
hi SpellBad ctermfg=red cterm=underline
