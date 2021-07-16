" ---------------------------------- Options --------------------------------- "

setlocal nospell
setlocal textwidth=120

" Format on save
autocmd BufWritePre *.py execute 'silent :Black'

" Black config
let g:black_linelength = 120

" --------------------------------- Mappings --------------------------------- "

" Run python script
" With terminal
nnoremap <leader>t :w!<CR>:AsyncStop!<CR>:AsyncRun -mode=term -pos=termhelp python %<CR>
" Without terminal
nnoremap <leader>r :w!<CR>:AsyncStop!<CR>:AsyncRun python %<CR>

" Format on Ctrl-F
nnoremap <C-f> <nop>
nnoremap <silent> <C-f> :PyrightOrganizeImports<CR>:Black<CR>
