" --------------------------------- Settings --------------------------------- "

" Barbar bufferline
let bufferline = get(g:, 'bufferline', {})
" Disable animations
let bufferline.animation = v:false
" Show tabs
let bufferline.tabpages = v:true
" Show icons
let bufferline.icons = 'numbers'
" Buffer modified icons
let bufferline.icon_close_tab_modified = '+'

" --------------------------------- Keybinds --------------------------------- "

" Set buflisted fixes buffer not found error
nnoremap <silent> <Tab> :set buflisted<CR>:BufferNext<CR>
nnoremap <silent> <S-Tab> :set buflisted<CR>:BufferPrevious<CR>
