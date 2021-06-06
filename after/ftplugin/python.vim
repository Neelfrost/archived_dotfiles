" ---------------------------------- Options --------------------------------- "

" Disable scrolloff
setlocal nospell
setlocal scrolloff=0
setlocal textwidth=119

" Format on save
autocmd BufWritePre *.py execute 'silent :Black'

" Black config
let g:black_linelength = 119

" Use deoplete-jedi's completion
let g:jedi#completions_enabled = 0

" --------------------------------- Keybinds --------------------------------- "

" Run python script
" With terminal
nnoremap <F6> :w!<CR>:AsyncRun -mode=term -pos=external python %<CR>
" Without terminal
nnoremap <F7> :w!<CR>:AsyncRun python %<CR>

nnoremap <C-f> <nop>
" Format on Ctrl-F
nnoremap <silent> <C-f> :Black<CR>

" Jedi keybinds
let g:jedi#goto_command = ""
let g:jedi#goto_assignments_command = "<Space>g"
let g:jedi#goto_stubs_command = "<Space>s"
let g:jedi#goto_definitions_command = "<Space>d"
let g:jedi#documentation_command = ""
let g:jedi#usages_command = "<Space>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<Space>r"
