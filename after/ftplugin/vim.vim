" ---------------------------------- Options --------------------------------- "

" Disable inserting comment leader after hitting o or O
setlocal formatoptions-=o
" Disable inserting comment leader after hitting <Enter> in insert mode
setlocal formatoptions-=r
setlocal textwidth=80

if match(&runtimepath, 'auto-pairs') != -1
    let b:AutoPairs = AutoPairsDefine({'<' : '>'})

    " Do not use `"` for vim script since `"` is also used for comment
    let b:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '`':'`', '<':'>'}
endif
