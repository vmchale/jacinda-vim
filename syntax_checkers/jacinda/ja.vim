if exists('g:loaded_syntastic_jacinda_ja_checker')
    finish
endif
let g:loaded_syntastic_jacinda_ja_checker = 1

let g:syntastic_jacinda_ja_exec = 'kc'

function! SyntaxCheckers_jacinda_ja_GetLocList() dict
    let makeprg = self.makeprgBuild({
                \ 'exe': self.getExec(),
                \ 'args': 'tc',
                \ 'fname': shellescape(expand('%') )})

    let errorformat =
        \ 'ja: %m'

    let loclist = SyntasticMake({
            \ 'makeprg': makeprg,
            \ 'errorformat': errorformat })

    return loclist

endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'jacinda',
    \ 'name': 'ja' })
