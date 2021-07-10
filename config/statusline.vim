" --------------------------------- Lightline -------------------------------- "

function! IsPlugin()
      let filename = expand('%:t')
      return filename =~ 'NERD_tree' ? 1 :
                        \ filename =~# 'NvimTree' ? 1 :
                        \ filename ==# '[Plugins]' ? 1 :
                        \ &filetype =~ 'startify' ? 1 : 0
endfunction

function! LightlineFilename()
      let filename = expand('%:t')
      let fname = filename =~# 'NERD_tree' ? '' :
                        \ filename =~# 'NvimTree' ? '' :
                        \ filename ==# '[Plugins]' ? '' :
                        \ filename !=# '' ? filename : '[No Name]'
      return LightlineFileIcon() . fname
endfunction

function! LightlineFileIcon()
      let filename = expand('%:t')
      let icon = IsPlugin() ? '' :
                        \ winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : '') : ''
      return icon
endfunction

function! LightlineReadonly()
      return &readonly ? '' : ''
endfunction

function! LightLineMode()
      let fname = expand('%:t')
      return fname =~ 'NERD_tree' ? 'NERDTree' :
                        \ fname =~# 'NvimTree' ? 'NvimTree' :
                        \ fname ==# '[Plugins]' ? 'Plug' :
                        \ &filetype =~ 'startify' ? 'Startify' :
                        \ lightline#mode()
endfunction

function! LightlineFileformat()
      return IsPlugin() ? '' :
                        \ winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFileencoding()
      return IsPlugin() ? '' :
                        \ winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineWordCount()
      return &filetype =~# '\v(tex|markdown)' ? wordcount().words . ' Words' : ''
endfunction

function! LightlinePercent()
      return winwidth(0) > 70 ? printf('並%d%% of %d', (100 * line('.') / line('$')), line('$')) : ''
endfunction

function! LightlineLineInfo()
      return winwidth(0) > 70 ? printf(': %d:%-2d', line('.'), col('.')) : ''
endfunction

function! LightlineTotalLines()
      return winwidth(0) > 70 ? printf('%d ﲯ', line('$')) : ''
endfunction

let g:lightline = {
                  \   'enable': { 'tabline': 0 },
                  \   'colorscheme': 'ayu_dark',
                  \   'active': {
                  \     'left': [['mode', 'paste'], ['readonly', 'filename', 'spell'], ['fileencoding', 'fileformat']],
                  \     'right': [['max'], ['lineinfo'], ['wordcount']]
                  \   },
                  \   'inactive': {
                  \     'left': [[], ['readonly', 'filename']],
                  \     'right': []
                  \   },
                  \   'component_function': {
                  \     'mode': 'LightLineMode',
                  \     'filename': 'LightlineFilename',
                  \     'readonly': 'LightlineReadonly',
                  \     'fileformat': 'LightlineFileformat',
                  \     'fileencoding': 'LightlineFileencoding',
                  \     'lineinfo': 'LightlineLineInfo',
                  \     'max': 'LightlineTotalLines',
                  \     'wordcount': 'LightlineWordCount',
                  \   },
                  \   }
