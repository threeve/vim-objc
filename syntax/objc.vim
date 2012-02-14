" Vim syntax file
" Language:     Objective-C
" Maintainer:   Jason Foreman <jason@threeve.org>
"
" This is a complete rewrite of the Objective-C syntax for Vim and
" is intended as a replacement for the bundled version.

if exists("b:current_syntax")
    finish
endif

" start with C syntax
runtime! syntax/c.vim

let b:current_syntax = "objc"
