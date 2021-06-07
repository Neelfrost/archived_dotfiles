" Trim trailing whitespace
function! TrimWhitespace()
    let l:save=winsaveview()
    keeppatterns %s/^\n*\%$//e " removes trailing space
    keeppatterns %s/\s\+$//e " removes trailing lines
    keeppatterns %s/\\item$/\\item /e " do not remove trailing space after LaTeX \item 
    keeppatterns %s/\\task$/\\task /e " do not remove trailing space after LaTeX \task 
    call winrestview(l:save)
endfunction

nnoremap <silent> <C-s> :call TrimWhitespace()<CR><Esc>:w!<CR>

" Reload config
" https://github.com/jdhao/nvim-config/blob/master/core/mappings.vim
nnoremap <silent> <F5> :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC <bar>
            \ echomsg "Config reloaded!"<CR>

" Open terminal at cwd
nnoremap <silent> <leader><leader>t :AsyncRun! alacritty.exe --working-directory "<cwd>"<CR>
" Open explorer at cwd
nnoremap <silent> <leader><leader>e :AsyncRun! explorer.exe "<cwd>"<CR>
" Open in Vscode
nnoremap <silent> <leader><leader>c :AsyncRun! code % <CR>
" Find a file
nnoremap <leader><leader>f :find<Space>

" Format entire document
nnoremap <C-f> gg=G<C-o>zt<Esc>
" Format variable assigment
nnoremap <leader>= :%s/^\(let\)\s*\(\S\+\)\s*=\s*\(.\+\)/\1 \2 = \3/e<CR>:noh<CR>

" Remove highlight
nnoremap <silent> <leader>h :nohl<CR>

" Map $ to g_
nnoremap $ g_
vnoremap $ g_

" Close buffer
nnoremap <leader>w :bd!<CR>

" Yank till line end
nnoremap Y "+yg_<Esc>

" Always yank to clipboard
nnoremap y "+y
vnoremap y "+y

" Paste from system clipboard in insert mode
inoremap <C-v> <C-R>+

" Paste from system clipboard in normal mode when paste is on
nnoremap <expr> <C-v> &paste ? '"+P' : '<C-v>'

" Move to line end
inoremap <C-a> <Esc>g_a

" Display line movements
nnoremap <S-k> gk
nnoremap <S-j> gj
vnoremap <S-k> gk
vnoremap <S-j> gj

" Switched to barbar
" Tab and Shift + Tab between buffers
" nnoremap <silent> <Tab> :bnext<CR>
" nnoremap <silent> <S-Tab> :bprevious<CR>
" Ctrl Tab between tabs
nnoremap <silent> <C-Tab> :tabnext<CR>

" Spell check
inoremap <C-z> <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <C-z> 1z=<Esc>
nnoremap <C-Left> [s<Esc>
nnoremap <C-Right> ]s<Esc>

" Delete previous word
inoremap <C-BS> <C-w>
" Delete next word
inoremap <C-Del> <C-o>dW

" Indenting
nnoremap <M-]> >>
nnoremap <M-[> <<
" Continuous visual shifting https://superuser.com/q/310417/736190
xnoremap <M-]> >gv
xnoremap <M-[> <gv

" Window switching
nnoremap <M-left> <C-w>h
nnoremap <M-right> <C-w>l
nnoremap <M-up> <C-w>k
nnoremap <M-down> <C-w>j

" Disable word search
map <S-LeftMouse> <nop>
map <S-LeftDrag> <nop>

