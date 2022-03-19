setlocal commentstring={.\ %s

set smarttab

setl shiftwidth=2

digraphs := 8788
    \ \\ 955

" use ja as a checker
let g:syntastic_jacinda_checkers = [ 'ja' ]
