" --------------------------------- Settings --------------------------------- "

function! LightlineIsPlugin()
      let filename = expand('%:t')
      return filename =~ 'NERD_tree' ? 1 :
                        \    filename =~# 'NvimTree' ? 1 :
                        \    filename ==# '[Plugins]' ? 1 :
                        \    filename ==# 'packer' ? 1 :
                        \    &filetype =~ 'startify' ? 1 : 
                        \    &filetype =~ 'dashboard' ? 1 : 0
endfunction

function! LightlineFilename()
      let filename = expand('%:t')
      let fname = filename =~# 'NERD_tree' ? '' :
                        \    filename =~# 'NvimTree' ? '' :
                        \    filename ==# '[Plugins]' ? '' :
                        \    filename ==# 'packer' ? '' :
                        \    filename !=# '' ? filename : '[No Name]'
      return LightlineFileIcon() . fname
endfunction

function! LightlineFileIcon()
      let filename = expand('%:t')
      let icon = LightlineIsPlugin() ? '' :
                        \    winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' : '') : ''
      return icon
endfunction

function! LightlineReadonly()
      return &readonly ? '' : ''
endfunction

function! LightLineMode()
      let fname = expand('%:t')
      return fname =~ 'NERD_tree' ? 'NERDTree' :
                        \    fname =~# 'NvimTree' ? 'NvimTree' :
                        \    fname ==# '[Plugins]' ? 'Plug' :
                        \    fname ==# 'packer' ? 'Packer' :
                        \    &filetype =~ 'startify' ? 'Startify' :
                        \    &filetype =~ 'dashboard' ? 'Dashboard' :
                        \    lightline#mode()
endfunction

function! LightlineFileformat()
      return LightlineIsPlugin() ? '' :
                        \    winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFileencoding()
      return LightlineIsPlugin() ? '' :
                        \    winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineWordCount()
      return &filetype =~# '\v(tex|markdown)' ? wordcount().words . ' Words' : ''
endfunction

function! LightlinePercent()
      return winwidth(0) > 70 ? printf('並%d%% of %d', (100 * line('.') / line('$')), line('$')) : ''
endfunction

function! LightlineLineInfo()
      return winwidth(0) > 70 ? printf('Ln %d, Col %-2d', line('.'), col('.')) : ''
endfunction

function! LightlineTotalLines()
      return winwidth(0) > 70 ? printf('%d ﲯ', line('$')) : ''
endfunction

let g:lightline = {
                  \    'enable': { 'tabline': 0 },
                  \    'colorscheme': 'ayu_dark',
                  \    'active': {
                        \    'left': [['mode', 'paste'], ['readonly', 'filename', 'spell'], ['fileencoding', 'fileformat']],
                        \    'right': [['max'], ['lineinfo'], ['wordcount']]
                        \    },
                        \    'inactive': {
                              \    'left': [[], ['readonly', 'filename']],
                              \    'right': []
                              \    },
                              \    'component_function': {
                                    \    'mode': 'LightLineMode',
                                    \    'filename': 'LightlineFilename',
                                    \    'readonly': 'LightlineReadonly',
                                    \    'fileformat': 'LightlineFileformat',
                                    \    'fileencoding': 'LightlineFileencoding',
                                    \    'lineinfo': 'LightlineLineInfo',
                                    \    'max': 'LightlineTotalLines',
                                    \    'wordcount': 'LightlineWordCount',
                                    \    },
                                    \    }
