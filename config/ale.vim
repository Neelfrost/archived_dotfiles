let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ 'python': ['flake8'],
            \ 'tex': ['chktex', 'lacheck'],
            \ 'cs': ['OmniSharp'],
            \ }
let g:ale_fixers = {
            \ 'python': ['black'],
            \ }
let g:ale_sign_error=''
let g:ale_sign_warning=''
let g:ale_sign_info=''
