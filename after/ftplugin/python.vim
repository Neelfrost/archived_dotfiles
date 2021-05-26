" Run python script
nnoremap <F6> :w!<CR>:AsyncRun -mode=term -pos=external python %<CR>
nnoremap <F7> :w!<CR>:AsyncStop <CR>

" Better python syntax highlighting
let g:python_highlight_all=1

" Black format
autocmd BufWritePre *.py execute 'silent :Black'
let g:black_linelength=119

" Use deoplete-jedi's completion
let g:jedi#completions_enabled=0
