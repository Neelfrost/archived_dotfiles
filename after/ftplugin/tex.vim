" ---------------------------------- Options --------------------------------- "

setlocal spell
setlocal linebreak
setlocal wrap

" --------------------------------- Functions -------------------------------- "

" Auto insert \item on <CR>
" https://stackoverflow.com/questions/2547739/auto-insert-text-at-a-newline-in-vim
function! AutoItem()
    let [end_lnum, end_col] = searchpairpos('\\begin{', '', '\\end{', 'nW')
    if match(getline(end_lnum), '\(itemize\|enumerate\|description\)') != -1
        return "\\item "
    elseif match(getline(end_lnum), '\(tasks\)') != -1
        return "\\task "
    else
        return ""
    endif
endfunction

function! GetLine()
    let list = ['\\task $', '\item $']
    if getline('.') =~ list[0] || getline('.') =~ list[1]
        return 1
    else
        return 0
    endif
endfunction

inoremap <buffer> <expr> <CR> GetLine()
            \ ? '<C-w><C-w>'
            \ : (col(".") < col("$") ? '<CR>' : '<CR>'.AutoItem() )
nnoremap <expr> o "o".AutoItem()
nnoremap <expr> O "O".AutoItem()

" Inverse search
" https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt
function! SetServerName()
    let nvim_server_file = has('win32')
                \ ? $TEMP . "/curnvimserver.txt"
                \ : "/tmp/curnvimserver.txt"
    call system(printf("echo %s > %s", v:servername, nvim_server_file))
endfunction

augroup vimtex_common
    autocmd!
    call SetServerName()
augroup END

" Replace \ with / in LaTex input fields
function! FixInputs()
    let l:save = winsaveview()
    keeppatterns %s/\(input\|include\)\({.\+\)\\\(.\+}\)/\1\2\/\3/ge "
    call winrestview(l:save)
endfunction

autocmd BufWritePre <buffer> :call FixInputs()

" Set and Restore indent
function! SetIndentLine()
    let g:indent_blankline_char = '·'
    let g:indent_blankline_space_char = '·'
endfunction

function! ResetIndentLine()
    let g:indent_blankline_char = '▏'
    let g:indent_blankline_space_char = ' '
endfunction

autocmd BufEnter *.tex :call SetIndentLine()
autocmd BufLeave * :call ResetIndentLine()

" Clean up auxiliary files on quit
autocmd User VimtexEventQuit VimtexStopAll
autocmd User VimtexEventQuit VimtexClean

" --------------------------------- Keybinds --------------------------------- "

" Push to next item of the list
nnoremap <Insert> i<CR>\item <Esc>
" Adjoin next item
nnoremap <Delete> gJi<C-o>dW<C-o>dW <Esc>

" Bold - italics word under cursor or selected
vnoremap <M-b> di\textbi{}<Esc>P
nnoremap <M-b> diwi\textbi{}<Esc>P

" Bold word under cursor or selected
vnoremap <M-B> di\textbf{}<Esc>P
nnoremap <M-B> diwi\textbf{}<Esc>P

" Put the word inside chem environment
nnoremap <M-v> diwi\ch{}<Esc>P
vnoremap <M-v> di\ch{}<Esc>P

" Append period or comma to selected lines
vnoremap np :norm A.
vnoremap nc :norm A,

" ------------------------------ Vimtex Settings ----------------------------- "

" Disable imaps (using Ultisnips)
let g:vimtex_imaps_enabled = 0
" Do not open pdfviwer on compile
let g:vimtex_view_automatic = 0
" Disable conceal
let g:vimtex_syntax_conceal_default = 0
" Disable quickfix auto open
let g:vimtex_quickfix_ignore_mode = 0
" PDF viewer settings
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
            \='-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_quickfix_mode = 0
" Latex warnings to ignore
let g:vimtex_quickfix_ignore_filters = [
            \   'Underfull \\hbox (badness [0-9]*) in paragraph at lines',
            \   'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in paragraph at lines',
            \   'Underfull \\hbox (badness [0-9]*) in ',
            \   'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in ',
            \   'Package hyperref Warning: Token not allowed in a PDF string',
            \   'Package typearea Warning: Bad type area settings!',
            \   'Command terminated with space',
            \   'Package fancyhdr Warning: \\headheight is too small ',
            \   'Package caption Warning: The option ',
            \   'Package caption Warning: Unused \\captionsetup',
            \   'Package enumitem Warning: Negative labelwidth',
            \   'LaTeX Font Warning: Font shape'
            \   ]
