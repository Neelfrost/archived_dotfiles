" ---------------------------------- Options --------------------------------- "

syntax on
filetype plugin indent on

set encoding=utf-8        " File encoding
set fileencoding=utf-8    " File encoding
set spelllang=en_us       " Use en_us to spellcheck
set shiftwidth=4          " Number of auto-indent spaces
set tabstop=4             " Number of columns per tab
set softtabstop=4         " Number of spaces per Tab
set expandtab             " Use spaces instead of tabs
set autoindent            " Auto-indent new lines
set smartindent           " Enable smart-indent
set number                " Show line numbers
set relativenumber        " Enable relative line numbers
set smartcase             " Enable smart-case search
set ignorecase            " Always case-insensitive
set incsearch             " Searches for strings incrementally
set scrolloff=8
set laststatus=2
set mouse=nv              " Enable mouse for normal and visual modes
set hidden                " Enable moving between unsaved buffers
set background=dark       " Enable dark background colorschemes
set fillchars=eob:—       " Replace ~ at buffer end with —
set noshowmode            " Disable secondary mode bar
set termguicolors         " Enable 24bit colors in terminal
set lazyredraw
set pastetoggle=<F2>      " Toggle paste mode
set nostartofline         " Do not move the cursor to the first non-blank char of the line
set iskeyword+=-          " Treat dash separated words as a word text object"
set updatetime=300        " Faster completion
set pumheight=10          " Show max. 10 completions
set completeopt+=noinsert " Autoselect first completion
set noswapfile            " No swap file

" Ignore LaTeX aux files
set wildignore+=*.aux,*.lof,*.lot,*.fls,*.out,*.toc,*.fmt,*.fot,*.cb,*.cb2,.*.lb,__latex*,*.fdb_latexmk,*.synctex,*.synctex(busy),*.synctex.gz,*.synctex.gz(busy),*.pdfsync,*.bbl,*.bcf,*.blg,*-blx.aux,*-blx.bib,*.run.xml

" Set python3 path
let py_loc = trim(system("which python"))
let g:python3_host_prog = substitute(py_loc, "\\", "\/", "g")

" Polyglot
let g:polyglot_disabled = ['sensible', 'ftdetect']

" Set current file's dir to cwd
autocmd BufEnter * silent! lcd %:p:h
