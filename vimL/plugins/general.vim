" --------------------------------- Settings --------------------------------- "

" Autopairs config
let g:AutoPairsShortcutJump = "<C-;>"

" Commentary
nnoremap <silent> <C-/> :Commentary<CR>
vnoremap <silent> <C-/> :Commentary<CR>
inoremap <silent> <C-/> <Esc>:Commentary<CR>i

" Devicons
let g:webdevicons_enable = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Vim-terminal-help
let g:terminal_height = 15
let g:terminal_list = 0

" Zepl
runtime zepl/contrib/python.vim  " Enable the Python contrib module.
let g:repl_config = {
            \    'python': {
                \    'cmd': 'python',
                \    'formatter': function('zepl#contrib#python#formatter')
                \    }
                \    }
" vim-open-url
let g:open_url_default_mappings = 0
nmap <leader>u <Plug>(open-url-browser)
nmap <leader>s <Plug>(open-url-search)
