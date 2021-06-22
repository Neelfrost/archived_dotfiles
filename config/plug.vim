" ---------------------------------- Plugins --------------------------------- "

" Install vim-plug if not installed
if empty(glob(stdpath('data') . '\site\autoload\plug.vim'))
    silent execute '!curl -fLo ' . '"' . stdpath('data') . '\site\autoload\plug.vim' . '"' . ' --create-dirs ' . '"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
    autocmd VimEnter * source $MYVIMRC | PlugInstall --sync | source $MYVIMRC
" Enable plugins if plugins are installed
else
    call plug#begin(stdpath('data').'\plugged')

" ----------------------------------- Style ---------------------------------- "

    Plug 'romgrk/barbar.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
    Plug 'itchyny/lightline.vim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'luochen1990/rainbow'
    Plug 'ryanoasis/vim-devicons'
    Plug 'machakann/vim-highlightedyank'
    Plug 'Neelfrost/onehalf'
    Plug 'sainnhe/gruvbox-material'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'norcalli/nvim-colorizer.lua'
    " Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
    " Plug 'gruvbox-community/gruvbox'
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'

" --------------------------------- Language --------------------------------- "

    Plug 'psf/black', {'branch': 'stable'}
    Plug 'zchee/deoplete-jedi'
    Plug 'davidhalter/jedi-vim'
    Plug 'python-rope/ropevim'
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
endif

" --------------------------------- Keybinds --------------------------------- "

nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>

