" ---------------------------------- Airline --------------------------------- "

" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter='unique_tail'
" let g:airline#extensions#wordcount#filetypes='\vasciidoc|help|mail|markdown|pandoc|org|rst|tex|text'
" let g:airline_theme='deus'

" --------------------------------- Lightline -------------------------------- "

function! LightlineFilename()
      let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
      let icon = (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : '')
      let modified = &modified ? ' ' : ''
      return icon . filename . modified
endfunction

function! LightlineReadonly()
      return &readonly && &filetype !=# 'help' ? '' : ''
endfunction

let g:lightline = {
                  \ 'enable': { 'tabline': 0 },
                  \ 'colorscheme': 'ayu_dark',
                  \ 'active': {
                  \   'left': [ [ 'mode', 'paste' ],
                  \             [ 'readonly', 'filename'] ],
                  \   'right': [ [ 'lineinfo' ],
                  \              [ 'percent' ], ['spell'] ]
                  \ },
                  \ 'component': {
                  \   'lineinfo': ' %3l:%-2v%<',
                  \   'percent': '☰ %3p%%',
                  \ },
                  \ 'component_function': {
                  \   'filename': 'LightlineFilename',
                  \   'readonly': 'LightlineReadonly',
                  \ },
                  \ 'separator': {
                  \   'left': '',
                  \   'right': ''
                  \ },
                  \ 'subseparator': {
                  \   'left': '',
                  \   'right': ''
                  \ }
                  \ }
