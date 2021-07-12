" ---------------------------------- Options --------------------------------- "

" Disable inserting comment leader after hitting o or O
setlocal formatoptions-=o
" Disable inserting comment leader after hitting <Enter> in insert mode
setlocal formatoptions-=r
setlocal textwidth=120

" Run lua script
" With terminal
nnoremap <leader>t :w!<CR>:AsyncRun -mode=term -pos=external lua %<CR>
" Without terminal
nnoremap <leader>r :w!<CR>:AsyncRun lua %<CR>
" With terminal
nnoremap <leader>lt :w!<CR>:AsyncRun -mode=term -pos=external lovec .<CR>
" Without terminal
nnoremap <leader>lr :w!<CR>:AsyncRun love .<CR>
