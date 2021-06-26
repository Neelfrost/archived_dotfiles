" --------------------------------- Settings --------------------------------- "

" Check syntax on insert leave
let g:ale_lint_on_insert_leave = 1

" Set syntax checkers
let g:ale_linters = {
            \   'python': ['flake8'],
            \   'tex': ['chktex', 'lacheck'],
            \   'cs': ['OmniSharp'],
            \   }

" Set syntax fixers
let g:ale_fixers = {
            \   'python': ['black'],
            \   }

" Icons
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_sign_info = ''
