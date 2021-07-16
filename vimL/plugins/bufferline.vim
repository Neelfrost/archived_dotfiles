" --------------------------------- Settings --------------------------------- "

" Barbar bufferline
let bufferline = get(g:, 'bufferline', {})
" Disable animations
let bufferline.animation = v:true
" Show tabs
let bufferline.tabpages = v:true
" Show icons
let bufferline.icons = 'numbers'
" Buffer modified icons
let bufferline.icon_close_tab_modified = '+'
" Unnamed buffers
let bufferline.no_name_title = '[No Name]'

" --------------------------------- Mappings --------------------------------- "

" Set buflisted fixes buffer not found error
nnoremap <silent> <Tab> :BufferNext<CR>
nnoremap <silent> <S-Tab> :BufferPrevious<CR>
nnoremap <silent> <leader>w :bd!<CR>
