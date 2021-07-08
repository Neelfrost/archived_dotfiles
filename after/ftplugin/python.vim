" ---------------------------------- Options --------------------------------- "

setlocal nospell
setlocal textwidth=119

" Format on save
autocmd BufWritePre *.py execute 'silent :Black'

" Black config
let g:black_linelength = 119

" --------------------------------- Keybinds --------------------------------- "

" Run python script
" With terminal
nnoremap <leader>t :w!<CR>:AsyncRun -mode=term -pos=external python %<CR>
" Without terminal
nnoremap <leader>r :w!<CR>:AsyncRun python %<CR>

" Format on Ctrl-F
nnoremap <C-f> <nop>
nnoremap <silent> <C-f> :Black<CR>
