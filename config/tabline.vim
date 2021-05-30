" ---------------------------------- Barbar ---------------------------------- "

let bufferline = get(g:, 'bufferline', {})
" Enable/disable animations
let bufferline.animation=v:false
let bufferline.icon_close_tab_modified=''

" --------------------------------- Keybinds --------------------------------- "

nnoremap <silent> <Tab> :BufferNext<CR>
nnoremap <silent> <S-Tab> :BufferPrevious<CR>
