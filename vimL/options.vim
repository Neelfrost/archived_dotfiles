" ---------------------------------- Options --------------------------------- "

syntax on
filetype plugin indent on

set encoding=utf-8               " File encoding
set fileencoding=utf-8           " File encoding
set fileformat=dos               " DOS fileformat
set spelllang=en_us              " Use en_us to spellcheck
set tabstop=4                    " Number of columns per tab
set shiftwidth=4                 " Number of auto-indent spaces
set expandtab                    " Use spaces instead of tabs
set softtabstop=4                " Number of spaces per Tab
set autoindent                   " Auto-indent new lines
set smartindent                  " Enable smart-indent
set number                       " Show line numbers
set relativenumber               " Enable relative line numbers
set smartcase                    " Enable smart-case search
set ignorecase                   " Always case-insensitive
set incsearch                    " Searches for strings incrementally
set scrolloff=8
set laststatus=2
set mouse=nv                     " Enable mouse for normal and visual modes
set hidden                       " Enable moving between unsaved buffers
set background=dark              " Enable dark background colorschemes
set fillchars=eob:—              " Replace ~ at buffer end with —
set noshowmode                   " Disable secondary mode bar
set termguicolors                " Enable 24bit colors in terminal
set lazyredraw
set pastetoggle=<F12>             " Toggle paste mode
set nostartofline                " Do not move the cursor to the first non-blank char of the line
set pumheight=10                 " Show max. 10 completions
set completeopt=menuone,noselect " Enable completion for vim-compe
set noswapfile                   " No swap file
set shortmess+=c
set splitright
set splitbelow

" Ignore LaTeX aux files
set wildignore+=*.aux,*.lof,*.lot,*.fls,*.out,*.toc,*.fmt,*.fot,*.cb,*.cb2,.*.lb,__latex*,*.fdb_latexmk,*.synctex,*.synctex(busy),*.synctex.gz,*.synctex.gz(busy),*.pdfsync,*.bbl,*.bcf,*.blg,*-blx.aux,*-blx.bib,*.run.xml,indent.log,*.pdf

" Set python3 path
let py_loc = trim(system("which python"))
let g:python3_host_prog = substitute(py_loc, "\\", "\/", "g")

" Polyglot
let g:polyglot_disabled = ['sensible', 'ftdetect']

" Disable Python2 support
let g:loaded_python_provider = 0

" Disable perl provider
let g:loaded_perl_provider = 0

" Disable ruby provider
let g:loaded_ruby_provider = 0

" Disable node provider
let g:loaded_node_provider = 0

" Do not load menu
let g:did_install_default_menus = 1

" Do not load tohtml.vim
let g:loaded_2html_plugin = 1

" Do not load zipPlugin.vim, gzip.vim and tarPlugin.vim (all these plugins are
" related to checking files inside compressed files)
let g:loaded_zipPlugin = 1
let g:loaded_gzip = 1
let g:loaded_tarPlugin = 1

" Do not load the tutor plugin
let g:loaded_tutor_mode_plugin = 1
