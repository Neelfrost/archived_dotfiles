" Author: Neel Basak
" Github: https://github.com/Neelfrost
" File: init.vim

source ~\AppData\Local\nvim\vimL\options.vim
source ~\AppData\Local\nvim\vimL\plugins.vim

" Source plugin settings if installed
if !empty(glob(stdpath('data').'\plugged'))
    " source ~\AppData\Local\nvim\vimL\plugins\floaterm.vim
    source ~\AppData\Local\nvim\vimL\plugins\general.vim
    source ~\AppData\Local\nvim\vimL\plugins\gutentags.vim
    source ~\AppData\Local\nvim\vimL\plugins\rainbow-brackets.vim
    source ~\AppData\Local\nvim\vimL\plugins\ultisnips.vim
    source ~\AppData\Local\nvim\vimL\plugins\ale.vim
    source ~\AppData\Local\nvim\vimL\plugins\startify.vim
    source ~\AppData\Local\nvim\vimL\plugins\ctrlp.vim
    source ~\AppData\Local\nvim\vimL\plugins\statusline.vim
    source ~\AppData\Local\nvim\vimL\plugins\bufferline.vim
    lua require("plugins.indentline")
    lua require("plugins.nvimtree")
    lua require("plugins.compe")
    lua require("plugins.lsp")
    lua require("plugins.lspsaga")
    lua require("plugins.hop")
    source ~\AppData\Local\nvim\vimL\theme.vim
endif

source ~\AppData\Local\nvim\vimL\autocommands.vim
source ~\AppData\Local\nvim\vimL\mappings.vim
