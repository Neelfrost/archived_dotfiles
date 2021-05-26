" ------------ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ------------ "
" ------------ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ------------ "
" ------------ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ------------ "
" ------------ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ------------ "
" ------------ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ------------ "
" ------------ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ------------ "
" ---------------------------------- Options --------------------------------- "

syntax on
filetype plugin on
set encoding=utf-8
set fileencoding=utf-8
set spell spelllang=en_us
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set scrolloff=8
set autoindent
set smartindent
set incsearch
set number
set relativenumber
set linebreak
set wrap
set mouse=nv
set hidden
set ignorecase
set smartcase
set background=dark
set termguicolors

" Python path
let g:python3_host_prog="C:\\Program Files\\Python39\\python.exe"

" Polyglot
let g:polyglot_disabled=['sensible', 'ftdetect']

" Set file's dir to cwd
autocmd BufEnter * silent! lcd %:p:h

" ---------------------------------- Plugins --------------------------------- "

call plug#begin(stdpath('data').'\plugin')
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asyncrun.extra'
Plug 'jiangmiao/auto-pairs'
Plug 'psf/black', {'branch': 'stable', 'for': 'python'}
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'gruvbox-community/gruvbox'
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'neomake/neomake'
Plug 'preservim/nerdtree'
Plug 'vim-python/python-syntax', {'for': 'python'}
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'ludovicchabant/vim-gutentags'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-repeat'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'luochen1990/rainbow'
Plug 'christoomey/vim-titlecase'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck', {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
call plug#end()

" --------------------------------- Settings --------------------------------- "

" Startify
source ~\AppData\Local\nvim\config\start-screen.vim
" Deoplete
source ~\AppData\Local\nvim\config\deoplete.vim
" NERDTree
source ~\AppData\Local\nvim\config\nerdtree.vim
" Easy Motion
source ~\AppData\Local\nvim\config\easymotion.vim
" Theme
source ~\AppData\Local\nvim\config\theme.vim
" Keybinds
source ~\AppData\Local\nvim\config\keybinds.vim
" Autocommands
source ~\AppData\Local\nvim\config\autocommands.vim
" Neovide
if exists('g:neovide')
    source ~\AppData\Local\nvim\config\neovide.vim
endif

" ------------------------------ Plugin Settings ----------------------------- "

" Highlight yank for 1s
let g:highlightedyank_highlight_duration=1000

" Ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Neomake config
call neomake#configure#automake('w')
let g:neomake_python_enabled_makers=['flake8']

" Gutentags config
let g:gutentags_generate_on_new=1
let g:gutentags_generate_on_missing=1
let g:gutentags_generate_on_write=1
let g:gutentags_generate_on_empty_buffer=0

" Autopairs config
let g:AutoPairsShortcutJump="<C-l>"

" indent-blankline, indentLine config
let g:indentLine_char='|'
let g:indentLine_fileTypeExclude=['tex', 'vim']
let g:indentLine_setColors=0
let g:indentLine_setConceal=0
let g:indent_blankline_char='|'

" Enable devicons
let g:webdevicons_enable=1

" Barbar tabline
let bufferline = get(g:, 'bufferline', {})
" Enable/disable animations
let bufferline.animation = v:false

" Comment
nnoremap <silent> <C-/> :Commentary<CR>
vnoremap <silent> <C-/> :Commentary<CR>

" Plug install, clean
nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>

" louchen rainbow config
let g:rainbow_active=1
" let g:rainbow_conf = {
"             \   'separately': {
"             \       'tex': {
"             \           'parentheses_options': 'containedin=texMathGroup',
"             \           'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"             \       },
"             \}
"             \}
" nnoremap <f1> :echo synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>
" nnoremap <f2> :echo ("hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
"             \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
"             \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">")<cr>
" nnoremap <f3> :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>
" nnoremap <f4> :exec 'syn list '.synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>

