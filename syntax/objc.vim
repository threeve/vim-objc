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

" #import
syn match objcImport display "^\s*\(%:\|#\)\s*import\>\s*["<]" contains=cIncluded

" Objective-C compiler directives
syn match objcDirective display "@interface\|@implementation\|@protocol\|@class\|@end"
syn match objcDirective display "@property\|@synthesize\|@dynamic"
syn match objcDirective display "@required\|@optional"
syn match objcDirective display "@synchronized\|@autoreleasepool"
syn match objcDirective display "@selector\|@encode"
syn match objcAccess display "@public\|@private\|@protected\|@package"
syn match objcException display "@try\|@catch\|@finally\|@throw"

" Objective-C extensions
syn keyword objcBoolean YES NO TRUE FALSE
syn keyword objcConstant nil Nil
syn keyword objcType id Class Protocol Method Ivar Category SEL IMP objc_property_t BOOL
syn keyword objcStatement self super _cmd
syn match objcFormat display "%@" contained
syn region objcString start=+@"+ end=+"+ contains=cFormat,cSpecial,objcFormat,@Spell

hi def link objcAccess Statement
hi def link objcBoolean Boolean
hi def link objcConstant Constant
hi def link objcDirective Structure
hi def link objcException Exception
hi def link objcFormat SpecialChar
hi def link objcImport Include
hi def link objcStatement Statement
hi def link objcString String
hi def link objcType Type

let b:current_syntax = "objc"
