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
source ~\AppData\Local\nvim\config\plug.vim
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
    " Vim-autoformat
    source ~\AppData\Local\nvim\config\autoformat.vim
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
endif
" Keybinds
source ~\AppData\Local\nvim\config\keybinds.vim
" Autocommands
source ~\AppData\Local\nvim\config\autocommands.vim
" Neovide
if exists('g:neovide')
    source ~\AppData\Local\nvim\config\neovide.vim
endif
