scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax match jacComment "\v\{\..*$" contains=@Spell

syntax match jacIdentifier "\v[a-z][a-zA-Z0-9]*"
syntax match jacType "\v[A-Z][a-zA-Z0-9]*"

syntax match jacNum "\v[0-9]+"
syntax match jacNum "\v[0-9]+\.[0-9]+"

syntax keyword jacKeyword let in val end fn

syntax region jacRegex start="/" end="/"
syntax region jacString start="'" end="'"

highlight link jacComment Comment
highlight link jacKeyword Keyword
highlight link jacNum Number
highlight link jacIdentifier Identifier
highlight link jacSymbol Special
highlight link jacRegex String
highlight link jacString String

let b:current_syntax = 'jacinda'
