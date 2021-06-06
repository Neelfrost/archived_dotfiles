" Enable
let g:deoplete#enable_at_startup = 1

" Deoplete vimtex config
call deoplete#custom#var('omni', 'input_patterns', {
            \ 'tex': g:vimtex#re#deoplete
            \})
call deoplete#custom#option({
            \   'ignore_case': v:true,
            \   'smart_case': v:true,
            \})

" --------------------------------- Keybinds --------------------------------- "

" taken from : https://vi.stackexchange.com/questions/12394/change-keybinding-for-up-down-when-in-vim-popup
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
