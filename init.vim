" ------------ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ------------ "
" ------------ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ------------ "
" ------------ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ------------ "
" ------------ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ------------ "
" ------------ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ------------ "
" ------------ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ------------ "
" ---------------------------------- Options --------------------------------- "

syntax on
filetype plugin indent on

set encoding=utf-8     " File encoding
set fileencoding=utf-8 " File encoding
set spelllang=en_us    " Use en_us to spellcheck
set shiftwidth=4       " Number of auto-indent spaces
set tabstop=4          " Number of columns per tab
set softtabstop=4      " Number of spaces per Tab
set expandtab          " Use spaces instead of tabs
set autoindent         " Auto-indent new lines
set smartindent        " Enable smart-indent
set number             " Show line numbers
set relativenumber     " Enable relative line numbers
set smartcase          " Enable smart-case search
set ignorecase         " Always case-insensitive
set incsearch          " Searches for strings incrementally
set scrolloff=8
set laststatus=2
set mouse=nv           " Enable mouse for normal and visual modes
set hidden             " Enable moving between unsaved buffers
set background=dark    " Enable dark background colorschemes
set fillchars=eob:—    " Replace ~ at buffer end with —
set noshowmode         " Disable secondary mode bar
set termguicolors      " Enable 24bit colors in terminal
set lazyredraw
set pastetoggle=<F2>   " Toggle paste mode
set nostartofline      " Do not move the cursor to the first non-blank char of the line

" Ignore LaTeX aux files
set wildignore+=*.aux,*.lof,*.lot,*.fls,*.out,*.toc,*.fmt,*.fot,*.cb,*.cb2,.*.lb,__latex*,*.fdb_latexmk,*.synctex,*.synctex(busy),*.synctex.gz,*.synctex.gz(busy),*.pdfsync,*.bbl,*.bcf,*.blg,*-blx.aux,*-blx.bib,*.run.xml

" Python path
let g:python3_host_prog = "C:\\Program Files\\Python39\\python.exe"

" Polyglot
let g:polyglot_disabled = ['sensible', 'ftdetect']

" Set file's dir to cwd
autocmd BufEnter * silent! lcd %:p:h

" ---------------------------------- Plugins --------------------------------- "

call plug#begin(stdpath('data').'\plugin')

" ----------------------------------- Style ---------------------------------- "

Plug 'romgrk/barbar.nvim'
Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
Plug 'itchyny/lightline.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'machakann/vim-highlightedyank'
Plug 'Neelfrost/onehalf'
Plug 'lilydjwg/colorizer'
Plug 'sainnhe/gruvbox-material'
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
" Plug 'gruvbox-community/gruvbox'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" --------------------------------- Language --------------------------------- "

Plug 'psf/black', {'branch': 'stable', 'for': 'python'}
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
" Plug 'python-rope/ropevim', {'for': 'python'}
Plug 'lervag/vimtex'

" --------------------------------- Features --------------------------------- "

Plug 'skywind3000/asyncrun.extra'
Plug 'skywind3000/asyncrun.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
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
Plug 'kevinhwang91/nvim-bqf'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'vim-autoformat/vim-autoformat'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-SpellCheck'
Plug 'dense-analysis/ale'
call plug#end()

" --------------------------------- Settings --------------------------------- "

" Ale
source ~\AppData\Local\nvim\config\ale.vim
" Startify
source ~\AppData\Local\nvim\config\start-screen.vim
" Deoplete
source ~\AppData\Local\nvim\config\deoplete.vim
" Nvim-tree
source ~\AppData\Local\nvim\config\nvim-tree.vim
" Easy Motion
source ~\AppData\Local\nvim\config\easymotion.vim
" Statusline
source ~\AppData\Local\nvim\config\statusline.vim
" Bufferline
source ~\AppData\Local\nvim\config\bufferline.vim
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
let g:highlightedyank_highlight_duration = 1000

" Ultisnips config
let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"

" Gutentags config
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0

" Autopairs config
let g:AutoPairsShortcutJump = "<C-l>"

" indent-blankline, indentLine config
let g:indent_blankline_filetype_exclude = ['help', 'vim', 'startify', 'nerdtree', 'NvimTree']
let g:indent_blankline_char = '▏'
let g:indent_blankline_show_trailing_blankline_indent = v:false

" Enable devicons
let g:webdevicons_enable = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Comments
nnoremap <silent> <C-/> :Commentary<CR>
vnoremap <silent> <C-/> :Commentary<CR>

" Plug install, clean
nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>

" louchen rainbow config
autocmd BufEnter * :silent RainbowToggleOn
let g:rainbow_conf = {
            \   'separately': {
            \       'nerdtree': 0,
            \   },
            \   }

" Vim-Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formatdef_latexindent = '"latexindent.exe -"'
let g:autoformat_verbosemode = 1
