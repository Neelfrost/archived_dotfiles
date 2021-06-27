" ---------------------------------- Themes ---------------------------------- "

" gruvbox community
" let g:gruvbox_colors = {'dark0_hard': '#0A0E14'}
" let g:gruvbox_improved_warnings = 1
" let g:gruvbox_invert_selection = 0
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox

" gruvbox material
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_show_eob = 1
let g:gruvbox_material_palette = {
            \   'bg0':              ['#14171c',   '234'],
            \   'bg1':              ['#191d24',   '235'],
            \   'bg2':              ['#191d24',   '235'],
            \   'bg3':              ['#3c3836',   '237'],
            \   'bg4':              ['#3c3836',   '237'],
            \   'bg5':              ['#504945',   '239'],
            \   'bg_statusline1':   ['#191d24',   '235'],
            \   'bg_statusline2':   ['#32302f',   '235'],
            \   'bg_statusline3':   ['#504945',   '239'],
            \   'bg_diff_green':    ['#32361a',   '22'],
            \   'bg_visual_green':  ['#333e34',   '22'],
            \   'bg_diff_red':      ['#3c1f1e',   '52'],
            \   'bg_visual_red':    ['#442e2d',   '52'],
            \   'bg_diff_blue':     ['#0d3138',   '17'],
            \   'bg_visual_blue':   ['#2e3b3b',   '17'],
            \   'bg_visual_yellow': ['#473c29',   '94'],
            \   'bg_current_word':  ['#32302f',   '236'],
            \   'fg0':              ['#e2cca9',   '223'],
            \   'fg1':              ['#e2cca9',   '223'],
            \   'red':              ['#f2594b',   '167'],
            \   'orange':           ['#f28534',   '208'],
            \   'yellow':           ['#e9b143',   '214'],
            \   'green':            ['#b0b846',   '142'],
            \   'aqua':             ['#8bba7f',   '108'],
            \   'blue':             ['#80aa9e',   '109'],
            \   'purple':           ['#d3869b',   '175'],
            \   'bg_red':           ['#db4740',   '167'],
            \   'bg_green':         ['#b0b846',   '142'],
            \   'bg_yellow':        ['#e9b143',   '214'],
            \   'grey0':            ['#7c6f64',   '243'],
            \   'grey1':            ['#928374',   '245'],
            \   'grey2':            ['#928374',   '246'],
            \   'none':             ['NONE',      'NONE'],
            \   }

colorscheme gruvbox-material

" Change bad word fg to red and bg to black and bold
hi clear SpellBad
hi SpellBad guifg = '#ea6962' gui=bold term=bold cterm=bold
hi SpellBad guibg = '#000000'

" Barbar colors
highlight! link BufferCurrent Visual
highlight! link BufferCurrentIndex Visual
highlight! link BufferCurrentMod Visual
highlight! link BufferCurrentSign Visual
highlight! link BufferCurrentTarget Visual
highlight! link BufferCurrentIcon Visual
highlight! link BufferVisible Normal
highlight! link BufferVisibleIndex Normal
highlight! link BufferVisibleMod Normal
highlight! link BufferVisibleSign Normal
highlight! link BufferVisibleTarget Visual
highlight! link BufferVisibleIcon Normal
