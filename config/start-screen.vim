" --------------------------------- Settings --------------------------------- "

" List recently modified files in a directory
" https://github.com/mhinz/vim-startify/issues/445
" https://github.com/mhinz/vim-startify/blob/master/autoload/startify.vim : lines 713-718
" usage (add to g:startify_lists): \ { 'type': function('s:list_files', [<number of files to be shown>, '<directory>', '<glob for file type>']), 'header': ['   <Header>']    },

let s:max_files_amount = 10
function! s:list_files(...) abort
    let l:file_amount = get(a:, 1, s:max_files_amount)
    " Ensure boundries 0 < v <= max
    if l:file_amount > s:max_files_amount
        let l:file_amount=s:max_files_amount
    elseif l:file_amount <= 0
        let l:file_amount=1
    endif

    let l:all_files = split(globpath(get(a:, 2), get(a:, 3)), '\n')
    " echomsg(l:all_files:e)

    " Sort based on modified time
    function! s:sort_by_mtime(foo, bar)
        let foo = getftime(a:foo)
        let bar = getftime(a:bar)
        return foo == bar ? 0 : (foo < bar ? 1 : -1)
    endfunction
    call sort(l:all_files, 's:sort_by_mtime')
    return map(l:all_files[:l:file_amount-1], '{"line": WebDevIconsGetFileTypeSymbol(v:val) . " " . v:val, "cmd": "edit " . v:val }')
endfunction

function! StartifyEntryFormat() abort
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_lists = [
            \   { 'type': 'sessions', 'header': ['   ﮦ Sessions'] },
            \   { 'type': 'bookmarks', 'header': ['    Bookmarks'] },
            \   { 'type': 'files', 'header': ['    Recent Files']  },
            \   { 'type': function('s:list_files', [5, '~\Documents\LaTeX\', '**/*.tex']), 'header': ['   ﭨ LaTeX']    },
            \   { 'type': function('s:list_files', [5, 'D:\My Folder\Dev\Python\', '**/*.py']), 'header': ['    Python']    },
            \   { 'type': 'dir', 'header': ['    Current Directory: '. getcwd()] },
            \   ]

let g:startify_bookmarks = [
            \   {'i': '~\AppData\Local\nvim\init.vim'},
            \   {'p': '~\AppData\Local\nvim\config\plugins.vim'},
            \   ]

let g:custom_header = [
            \   '    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
            \   '    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
            \   '    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
            \   '    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
            \   '    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
            \   '    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
            \   ]

let g:startify_custom_header = g:custom_header

" Sort wrt to modified
let g:startify_session_sort = 1
" Number of files to be displayed
let g:startify_files_number = 5
" Update session on close
let g:startify_session_persistence = 0
" Change dir when opening
let g:startify_change_to_dir = 1

" --------------------------------- Keybinds --------------------------------- "

" Open Startify
nnoremap <silent> <leader>n :Startify<CR>
