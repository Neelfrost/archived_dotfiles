" ---------------------------------- Plugins --------------------------------- "

" Install vim-plug if not installed
if empty(glob(stdpath('data') . '\site\autoload\plug.vim'))
    silent execute '!curl -fLo ' . '"' . stdpath('data') . '\site\autoload\plug.vim' . '"' . ' --create-dirs ' . '"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
    autocmd VimEnter * source $MYVIMRC | PlugInstall --sync | source $MYVIMRC
    " Enable plugins if vim-plug is installed
else
    call plug#begin(stdpath('data').'\plugged')

    " Style
    Plug 'romgrk/barbar.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'itchyny/lightline.vim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'luochen1990/rainbow'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sainnhe/gruvbox-material'
    Plug 'kyazdani42/nvim-tree.lua', {'commit': '10e845e01cb5fe62c952ccedf2edfe4ea78be727'}

    " Language
    Plug 'psf/black', {'branch': 'stable'}
    Plug 'lervag/vimtex'
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'

    " Features
    Plug 'skywind3000/asyncrun.extra'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-commentary'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-repeat'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-surround'
    Plug 'christoomey/vim-titlecase'
    Plug 'kevinhwang91/nvim-bqf'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'inkarkat/vim-ingo-library'
    Plug 'inkarkat/vim-SpellCheck'
    Plug 'dense-analysis/ale'
    Plug 'phaazon/hop.nvim'
    " Plug 'honza/vim-snippets'
    call plug#end()
endif

" --------------------------------- Keybinds --------------------------------- "

nnoremap <silent> <leader>pi :PlugInstall<CR>
nnoremap <silent> <leader>pc :PlugClean<CR>
nnoremap <silent> <leader>pu :PlugUpdate<CR>
