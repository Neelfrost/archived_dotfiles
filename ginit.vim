" Fix key mapping issues for GUI
inoremap <silent> <S-Insert>  <C-R>+
cnoremap <S-Insert> <C-R>+
" nnoremap <silent> <C-6> <C-^>

" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
" GuiFont! VictorMono\ NF:h12
GuiFont! JetBrainsMono\ NF:h11
  GuiTabline 0
  GuiPopupmenu 0
  " GuiRenderLigatures 1
  " GuiWindowOpacity 0.9
endif

