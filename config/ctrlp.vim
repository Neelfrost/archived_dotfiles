" --------------------------------- Settings --------------------------------- "

let g:ctrlp_cache_dir = '~\AppData\Local\nvim\.ctrlp'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_files = 50
let g:ctrlp_mruf_max = 50
let g:ctrlp_by_filename = 1

" --------------------------------- Keybinds --------------------------------- "

nmap <silent><C-S-m> :<C-U>CtrlPMRUFiles<CR>
