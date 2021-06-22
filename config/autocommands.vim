" ------------------------ Autocommands and Functions ------------------------ "

" Automatically reload the file if it is changed outside of Nvim, see
" https://unix.stackexchange.com/a/383044/221410. It seems that `checktime`
" command does not work in command line. We need to check if we are in command
" line before executing this command. See also
" https://vi.stackexchange.com/a/20397/15292.
augroup auto_read
    autocmd!
    autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
                \ if mode() == 'n' && getcmdwintype() == '' | checktime | endif
    autocmd FileChangedShellPost * echohl WarningMsg
                \ | echo "File changed on disk. Buffer reloaded!" | echohl None
augroup END

" Return to last edit position when opening a file
augroup resume_edit_position
    autocmd!
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | execute "normal! g`\"zvzz" | endif
augroup END

" Set window title
augroup dirchange
    autocmd!
    autocmd BufEnter * :set title | let &titlestring = expand('%')
augroup END

" Save current view settings on a per-window, per-buffer basis.
" https://stackoverflow.com/questions/4251533/vim-keep-window-position-when-switching-buffers
" http://vim.wikia.com/wiki/Avoid_scrolling_when_switch_buffers
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif

" Add newline to eof, trim trailing whitespace.
function! Cleanup()
    let l:save=winsaveview()
    keeppatterns %s/\%$/\r/e          " adds newline to eof
    keeppatterns %s/^\n*\%$//e        " removes trailing space
    keeppatterns %s/\s\+$//e          " removes trailing lines
    keeppatterns %s/\\item$/\\item /e " do not remove trailing space after LaTeX \item 
    keeppatterns %s/\\task$/\\task /e " do not remove trailing space after LaTeX \task 
    call winrestview(l:save)
endfunction

