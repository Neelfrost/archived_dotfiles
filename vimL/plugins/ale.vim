" --------------------------------- Settings --------------------------------- "

let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_disable_lsp = 1
let g:ale_hover_cursor = 0
let g:ale_warn_about_trailing_blank_lines = 0
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_fix_on_save = 1

" Set syntax checkers
let g:ale_linters = {
            \    'python': ['flake8'],
            \    'tex': ['chktex', 'lacheck'],
            \    'cs': ['OmniSharp'],
            \    }

" Set syntax fixers
let g:ale_fixers = {
            \    'tex': ['latexindent'],
            \    'lua': ['stylua']
            \    }
let g:ale_fix_on_save_ignore = {
            \    'tex': ['latexindent'],
            \    }

" Icons
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_sign_info = ''

" --------------------------------- Mappings --------------------------------- "

nnoremap <F4> :ALEFix<CR>
