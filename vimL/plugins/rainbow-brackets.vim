" --------------------------------- Settings --------------------------------- "

let g:rainbow_conf = {
            \    'separately': {
            \    'nerdtree': 0,
            \    },
            \    }

" Enable rainbow when entering buffer
autocmd BufEnter * :silent RainbowToggleOn
