" Vimtex Toggle Compile
nnoremap <F6> :w!<CR>:VimtexCompile<CR>

" Auto insert \item on <CR>
" https://stackoverflow.com/questions/2547739/auto-insert-text-at-a-newline-in-vim
function! AutoItem()
    let [end_lnum, end_col]=searchpairpos('\\begin{', '', '\\end{', 'nW')
    if match(getline(end_lnum), '\(itemize\|enumerate\|description\)') != -1
        return "\\item "
    elseif match(getline(end_lnum), '\(tasks\)') != -1
        return "\\task "
    else
        return ""
    endif
endfunction

inoremap <expr> <CR> getline('.') =~ '\item $'
            \ ? '<c-w><c-w>'
            \ : (col(".") < col("$") ? '<CR>' : '<CR>'.AutoItem() )
inoremap <expr> <CR> getline('.') =~ '\\task $'
            \ ? '<c-w><c-w>'
            \ : (col(".") < col("$") ? '<CR>' : '<CR>'.AutoItem() )
nnoremap <expr> o "o".AutoItem()
nnoremap <expr> O "O".AutoItem()

" Inverse search
" https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt
function! SetServerName()
    let nvim_server_file=has('win32')
                \ ? $TEMP . "/curnvimserver.txt"
                \ : "/tmp/curnvimserver.txt"
    call system(printf("echo %s > %s", v:servername, nvim_server_file))
endfunction

augroup vimtex_common
    autocmd!
    call SetServerName()
augroup END

" Ignore aux files
set wildignore+=*.aux,*.lof,*.log,*.lot,*.fls,*.out,*.toc,*.fmt,*.fot,*.cb,*.cb2,.*.lb,__latex*,*.fdb_latexmk,*.synctex,*.synctex(busy),*.synctex.gz,*.synctex.gz(busy),*.pdfsync,*.bbl,*.bcf,*.blg,*-blx.aux,*-blx.bib,*.run.xml

" Keybinds
nnoremap <M-i> i<CR>\item <Esc>
vnoremap <M-b> @m
nnoremap <M-b> @n
nnoremap <M-v> @v
vnoremap <leader><leader>n :norm A

" Do not open pdfviwer on compile
let g:vimtex_view_automatic=0
" Disable conceal
let g:vimtex_syntax_conceal_default=0
let g:vimtex_view_general_viewer='SumatraPDF'
let g:vimtex_view_general_options
            \='-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk='-reuse-instance'

" Latex warnings to ignore
let g:vimtex_quickfix_ignore_filters=[
            \'Underfull \\hbox (badness [0-9]*) in paragraph at lines',
            \'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in paragraph at lines',
            \'Underfull \\hbox (badness [0-9]*) in ',
            \'Overfull \\hbox ([0-9]*.[0-9]*pt too wide) in ',
            \'Package hyperref Warning: Token not allowed in a PDF string',
            \'Package typearea Warning: Bad type area settings!',
            \'Command terminated with space',
            \]
