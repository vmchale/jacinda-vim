setlocal commentstring={.\ %s

set smarttab

setl shiftwidth=2

setlocal makeprg=ja\ tc\ %
setlocal errorformat=%Eja:\ %f:%l:%c\ %m
setlocal errorformat+=%Eja:\ %m\ %trror\ at\ line\ %l\\,\ column\ %c
setlocal errorformat+=%E%m\ %trror\ at\ line\ %l\\,\ column\ %c
setlocal errorformat+=%E%f:%l:%c\ %m

function! JaTC()
    exec 'silent make'
    exec 'redraw!'
    exec 'cw'
endfunction

au BufWritePost *.jac call JaTC()
