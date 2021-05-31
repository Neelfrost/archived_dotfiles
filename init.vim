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
set laststatus=2
set fillchars=eob:—

" Ignore LaTeX aux files
set wildignore+=*.aux,*.lof,*.log,*.lot,*.fls,*.out,*.toc,*.fmt,*.fot,*.cb,*.cb2,.*.lb,__latex*,*.fdb_latexmk,*.synctex,*.synctex(busy),*.synctex.gz,*.synctex.gz(busy),*.pdfsync,*.bbl,*.bcf,*.blg,*-blx.aux,*-blx.bib,*.run.xml

" Python path
let g:python3_host_prog="C:\\Program Files\\Python39\\python.exe"

" Polyglot
let g:polyglot_disabled=['sensible', 'ftdetect']

" Set file's dir to cwd
autocmd BufEnter * silent! lcd %:p:h

" ---------------------------------- Plugins --------------------------------- "

call plug#begin(stdpath('data').'\plugin')
" ----------------------------------- Style ---------------------------------- "
Plug 'romgrk/barbar.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
Plug 'itchyny/lightline.vim'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'luochen1990/rainbow'
Plug 'pineapplegiant/spaceduck', {'branch': 'main'}
Plug 'ryanoasis/vim-devicons'
Plug 'machakann/vim-highlightedyank'
" Plug 'Yggdroot/indentLine'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" --------------------------------- Language --------------------------------- "
Plug 'psf/black', {'branch': 'stable', 'for': 'python'}
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'lervag/vimtex', {'for': 'tex'}
" --------------------------------- Features --------------------------------- "
Plug 'skywind3000/asyncrun.extra'
Plug 'skywind3000/asyncrun.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'ludovicchabant/vim-gutentags'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-titlecase'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'kevinhwang91/nvim-bqf'
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
" Statusline
source ~\AppData\Local\nvim\config\statusline.vim
" Tabline
source ~\AppData\Local\nvim\config\tabline.vim
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
let g:indent_blankline_filetype_exclude = ['help', 'vim', 'tex']
" let g:indent_blankline_char='▏'
let g:indent_blankline_char='┊'
let g:indent_blankline_show_trailing_blankline_indent=v:false

" Enable devicons
let g:webdevicons_enable=1
let g:webdevicons_conceal_nerdtree_brackets=1
let g:DevIconsEnableFoldersOpenClose=1

" Comments
nnoremap <silent> <C-/> :Commentary<CR>
vnoremap <silent> <C-/> :Commentary<CR>

" Plug install, clean
nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>

" louchen rainbow config
let g:rainbow_active=1
let g:rainbow_conf={
            \   'separately': {
            \       'nerdtree': 0,
            \   },
            \}

