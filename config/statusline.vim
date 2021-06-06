" ---------------------------------- Airline --------------------------------- "

" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter='unique_tail'
" let g:airline#extensions#wordcount#filetypes='\vasciidoc|help|mail|markdown|pandoc|org|rst|tex|text'
" let g:airline_theme='deus'

" --------------------------------- Lightline -------------------------------- "

function! LightlineFilename()
      let filename = expand('%:t')
      let fname = filename =~# 'NERD_tree' ? '' :
                        \ filename ==# '[Plugins]' ? '' :
                        \ filename !=# '' ? filename : '[No Name]'
      let icon = winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : '') : ''
      let modified = &modified ? ' ' : ''
      return icon . fname . modified
endfunction

function! LightlineReadonly()
      return &readonly && &filetype !=# 'help' ? '' : ''
endfunction

function! LightLineMode()
      let fname = expand('%:t')
      return fname =~ 'NERD_tree' ? 'NERDTree' :
                        \ fname ==# '[Plugins]' ? 'Plug' :
                        \ &filetype =~ 'startify' ? 'Startify' :
                        \ lightline#mode()
endfunction

function! LightlineFileformat()
      return winwidth(0) > 70 ? &fileformat : WebDevIconsGetFileFormatSymbol()
endfunction

function! LightlineWordCount()
      return &filetype =~# '\v(tex|markdown)' ? wordcount().words . ' Words' : ''
endfunction

function! LightlinePercent()
      return winwidth(0) > 70 ? '☰ ' . (100 * line('.') / line('$')) . '%' : ''
endfunction

function! LightlineLineInfo()
      return winwidth(0) > 70 ? printf(' %d:%-2d', line('.'), col('.')) : ''
endfunction

let g:lightline = {
                  \   'enable': { 'tabline': 0 },
                  \   'colorscheme': 'ayu_dark',
                  \   'active': {
                  \     'left': [ [ 'mode' ],
                  \               [ 'readonly', 'filename', 'fileformat' ] ],
                  \     'right': [ [ 'lineinfo' ],
                  \                   [ 'spell', 'wordcount', 'percent' ] ]
                  \   },
                  \   'inactive': {
                  \     'left': [ [ 'mode' ],
                  \               [ 'readonly', 'filename', 'fileformat' ] ],
                  \     'right': [ [ 'lineinfo' ],
                  \                   [ 'spell', 'wordcount', 'percent' ] ]
                  \   },
                  \   'component_function': {
                  \     'mode': 'LightLineMode',
                  \     'filename': 'LightlineFilename',
                  \     'readonly': 'LightlineReadonly',
                  \     'fileformat': 'LightlineFileformat',
                  \     'percent': 'LightlinePercent',
                  \     'lineinfo': 'LightlineLineInfo',
                  \     'wordcount': 'LightlineWordCount',
                  \   },
                  \   'separator': {
                  \     'left': '',
                  \     'right': ''
                  \   },
                  \   'subseparator': {
                  \     'left': '',
                  \     'right': ''
                  \   }
                  \   }
