" Editor Theme
" let g:material_theme_style='ocean'
" colorscheme material

" let g:gruvbox_colors={'dark0_hard': '#070d13'}
let g:gruvbox_colors={'dark0_hard': '#0A0E14'}
let g:gruvbox_improved_warnings=1
let g:gruvbox_invert_selection=0
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

let g:terminal_color_background = "#070d13"
" colorscheme spaceduck

" Change bad word color to red with underline
hi clear SpellBad
hi SpellBad guifg=red gui=underline
hi SpellBad ctermfg=red cterm=underline

" Airline theme
let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#wordcount#filetypes='\vasciidoc|help|mail|markdown|pandoc|org|rst|tex|text'
let g:airline_theme='deus'

