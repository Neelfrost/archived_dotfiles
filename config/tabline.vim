" ---------------------------------- Barbar ---------------------------------- "

let bufferline = get(g:, 'bufferline', {})
" Enable/disable animations
let bufferline.animation = v:false
let bufferline.tabpages = v:true
let bufferline.icon_close_tab_modified = ''

" --------------------------------- Keybinds --------------------------------- "

" set buflisted fixes buffer not found error
nnoremap <silent> <Tab> :set buflisted<CR> :BufferNext<CR>
nnoremap <silent> <S-Tab> :set buflisted<CR> :BufferPrevious<CR>
