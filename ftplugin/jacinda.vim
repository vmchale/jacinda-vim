setlocal commentstring={.\ %s

set smarttab

setl shiftwidth=2

setlocal makeprg=ja\ tc\ %
setlocal errorformat=%Eja:\ %l:%c\ %m
setlocal errorformat+=%Eja:\ %m\ %trror\ at\ line\ %l\\,\ column\ %c

function! JaTC()
    exec 'silent make'
    exec 'redraw!'
    exec 'cw'
endfunction

au BufWritePost *.jac call JaTC()
