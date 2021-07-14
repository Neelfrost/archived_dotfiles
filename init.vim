" Author: Neel Basak
" Github: https://github.com/Neelfrost
" File name: init.vim

" ------------ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ------------ "
" ------------ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ------------ "
" ------------ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ------------ "
" ------------ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ------------ "
" ------------ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ------------ "
" ------------ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ------------ "

" Vim config
source ~\AppData\Local\nvim\config\options.vim
" Plugins
source ~\AppData\Local\nvim\config\plugins.vim
" Source plugin settings if installed
if !empty(glob(stdpath('data').'\plugged'))
    " General plugin settings
    source ~\AppData\Local\nvim\config\general.vim
    " Gutentags
    source ~\AppData\Local\nvim\config\gutentags.vim
    " Indent-blankline
    source ~\AppData\Local\nvim\config\indentline.vim
    " Rainbow Brackets
    source ~\AppData\Local\nvim\config\rainbow-brackets.vim
    " Ultisnips
    source ~\AppData\Local\nvim\config\ultisnips.vim
    " Ale
    source ~\AppData\Local\nvim\config\ale.vim
    " Startify
    source ~\AppData\Local\nvim\config\start-screen.vim
    " Ctrl-p
    source ~\AppData\Local\nvim\config\ctrlp.vim
    " Statusline
    source ~\AppData\Local\nvim\config\statusline.vim
    " Bufferline
    source ~\AppData\Local\nvim\config\bufferline.vim
    " Nvimtree
    lua require("plugins.nvimtree")
    " Compe
    lua require("plugins.compe")
    " Lsp
    lua require("plugins.lsp")
    " Lspsaga
    lua require("plugins.lspsaga")
    " Hop
    lua require("plugins.hop")
    " Theme
    source ~\AppData\Local\nvim\config\theme.vim
endif
" Keybinds
source ~\AppData\Local\nvim\config\keybinds.vim
" Autocommands
source ~\AppData\Local\nvim\config\autocommands.vim
