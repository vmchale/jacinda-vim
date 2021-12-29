scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax match jacIdentifier "\v[a-z][a-zA-Z0-9]*"
syntax match jacType "\v[A-Z][a-zA-Z0-9]*"

syntax match jacNum "\v[0-9]+"
syntax match jacNum "\v[0-9]+\.[0-9]+"

syntax match kempeKeyword "let"
syntax match kempeKeyword "in"
syntax match kempeKeyword "val"
syntax match kempeKeyword "end"

highlight link jacComment Comment
highlight link jacKeyword Keyword
highlight link jacNum Number
highlight link jacIdentifier Identifier
highlight link jacSymbol Special

let b:current_syntax = 'jacinda'
