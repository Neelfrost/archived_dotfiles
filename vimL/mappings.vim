" --------------------------------- Mappings --------------------------------- "

" Reload config
" https://github.com/jdhao/nvim-config/blob/master/core/mappings.vim
nnoremap <silent> <F5> :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC <bar>
			\ echomsg "Config reloaded!"<CR>

" Open alacritty terminal at cwd
nnoremap <silent> <leader><leader>t :call LaunchExternalProg('start alacritty.exe', '--working-directory '.expand('%:p:h'))<CR>

" Open explorer at cwd
nnoremap <silent> <leader><leader>e :call LaunchExternalProg('explorer.exe', expand('%:p:h'))<CR>

" Open current file in vscode
nnoremap <silent> <leader><leader>c :call LaunchExternalProg('code', '%')<CR>

" Save file
nnoremap <silent> <C-s> :w!<CR>

" Toggle quickfix
nnoremap <silent> <leader>q :QFix<CR>

" Format entire document
nnoremap <C-f> gg=G<C-o>zt<Esc>

" Format variable assigment
nnoremap <leader>= :%s/^\(let\)\s*\(\S\+\)\s*=\s*\(.\+\)/\1 \2 = \3/e<CR>:noh<CR>

" Toggle spell
nnoremap <F1> :setlocal spell!<CR>

" Replace word under cursor
nnoremap <leader>r :%s/\<<C-r><C-w>\>/

" Remove highlight
nnoremap <silent> <leader>h :nohl<CR>

" Map $ to g_
nnoremap $ g_
vnoremap $ g_

" Yank till line end
nnoremap Y "+yg_<Esc>

" Always yank to clipboard
nnoremap y "+y
vnoremap y "+y

" Paste from system clipboard in insert mode
inoremap <C-v> <C-R>+

" Toggle paste mode and paste from system clipboard
nnoremap <leader>v <F12>"+P<F12>
inoremap <leader>v <ESC><F12>"+P<F12>i

" Move to line end
inoremap <C-a> <Esc>g_a

" Display line movements
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
vnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
vnoremap <expr> k (v:count == 0 ? 'gk' : 'k')

" Fix accidental line joining during visual block selection
vnoremap J j
vnoremap K k

" Spell check
" Correct previous bad word in insert mode
inoremap <C-z> <c-g>u<Esc>[s1z=`]a<c-g>u
" Correct word under cursor
nnoremap <C-z> 1z=<Esc>

" Delete previous word
inoremap <C-BS> <C-w>
" Delete next word
inoremap <C-Del> <C-o>dW

" Indenting
nnoremap <M-]> >>
nnoremap <M-[> <<
inoremap <S-Tab> <C-o><<

" Continuous visual shifting https://superuser.com/q/310417/736190
xnoremap <M-]> >gv
xnoremap <M-[> <gv

" Window switching
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

" Disable word search on shift mouse
map <S-LeftMouse> <nop>
map <S-LeftDrag> <nop>

" Command mode movement
cnoremap <C-j> <C-n>
cnoremap <C-k> <C-p>

" Text objects for entire buffer
xnoremap <silent> iB :<C-U>call BufferTextObj()<CR>
onoremap <silent> iB :<C-U>call BufferTextObj()<CR>

" Duplicate line
nnoremap <M-d> :t.<CR>
inoremap <M-d> <Esc>:t.<CR>gi
