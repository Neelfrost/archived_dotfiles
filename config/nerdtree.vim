" Refresh and open
" https://stackoverflow.com/questions/8584182/how-to-refresh-in-nerdtree-plugin#:~:text=Keymap%20to%20Refresh%20NERDTree&text=Once%20set%2C%20pressing%20Leader%20%2B%20r%20would%20refresh%20NERDTree%20.
function NERDTreeToggleAndRefresh()
    :NERDTreeToggle %
    if g:NERDTree.IsOpen()
        :NERDTreeRefreshRoot
    endif
endfunction

let g:NERDTreeDirArrowCollapsible='▼'
let g:NERDTreeDirArrowExpandable='►'
let g:NERDTreeMinimalUI=1
let NERDTreeQuitOnOpen=1
let NERDTreeRespectWildIgnore=1
let NERDTreeWinPos='right'
let NERDTreeWinSize=24

" " Ignore tex auxillary files
" let NERDTreeIgnore=['\.log$', '\.aux$', '\.fls$', '\.fdb_latexmk$', '\.synctex\.gz$']

" Keybinds
nnoremap <silent> <C-b> :call NERDTreeToggleAndRefresh()<CR>
