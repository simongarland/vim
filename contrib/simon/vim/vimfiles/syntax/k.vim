" Vim syntax file
" Language:	k
" Maintainer:	Simon Garland <simon_garland@bluewin.ch>
" Last Change: $Date: 2004/11/10 13:59:00 $
" Options	k_minlines = x to sync at least x lines backwards

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
 let main_syntax = 'k'
endif

set foldmethod=indent
set foldminlines=7
" initally don't bother to fold
set foldlevel=999

setlocal comments=:/,://

syn case match
set iskeyword=@,^_,48-57,.

" Operator
syn match kOperator		/[/\']/
syn match kOperator		/[/\']:/

" Comment
syn region kComment		start="^\s*/" end="$" keepend excludenl contains=kTodo
syn region kComment		start="\s/" end="$" keepend excludenl contains=kTodo
" multiline comment, bare \ means rest of file is comment
syn region kComment		start="^\\\\*\s*$" end="\%$" contains=kTodo,kExit
" multiline comment start / .. end \ 
syn region kComment		start="^/\s*$" end="^\\\s*$" keepend excludenl contains=kTodo
" emphasised comment
syn region kSpecialComment	start="^\s*//" end="$" keepend excludenl contains=kTodo
syn region kSpecialComment	start="\s//" end="$" keepend excludenl contains=kTodo

" Functions
syn keyword kFunction		acos asin atan avg bin cos exit exp getenv in last like log max min prd sin sqrt ss sum tan wavg within wsum xbar
syn keyword kStatement		exec select by from insert update delete

syn keyword kSpecial		0w 0W 0n 0Nh 0N 0Nj 0Ne 0Nm 0Nd 0Nz 0Nv 0Nu 0Nt

syn keyword kFunction		year month week mm dd date time datetime
syn keyword kFunction		hh minute second mm ss

" Conditional
syn keyword kConditional	if do
syn match kConditional		/$\[/me=e-1

" Repeat
syn keyword kRepeat		while

" Identifier
syn match kIdentifier		"\<[a-zA-Z\.][a-zA-Z0-9\.]*\>"
syn match kPlaceholder		"\<[xyz]\>" 
syn match kGlobal		"\<\u[A-Z0-9]*\>"

" Include
syn region kInclude		start="^\s*\\\a" end="\s" 
"syn region kInclude		start="^\s*\\\a\S" end="$" keepend 

" Include
syn match kLang			"^q)"
syn match kError		"^k)"
syn match kExit			"^\\\\" contained


" kSymbols prefixed by a '`'
syn match kSymbol		"\(`\<[a-zA-Z0-9\.]\+\>\)" contains=kType
syn match kSymbol		/\(`"[^"]*"\)/
syn match kHandle		"\(`:[a-zA-Z0-9\./:]*\>\)" 
syn keyword kType		boolean byte short int long real float char symbol month date datetime time minute second contained 

" Number
syn match kNumber		"-\=\(\d\+\)\=\.\d*\(e[+-]\=\d\+\)\=[ef]\="
syn match kNumber		"-\=\d\+\(e[+-]\=\d\+\)\=[ijhfe]\="
" Timestamp
syn match kNumber		"\d\{4}\.[01]\d\.[0123]\dT[012]\d\:[012345]\d:[012345]\d\(\.\d\+\)\="
" Month 
syn match kNumber		"\d\{4}\.[01]\dm"
" Time
syn match kNumber		"[012]\d:[012345]\d\(:[012345]\d\(\.\d\+\)\=\)\="
" Hex
syn match kNumber		"0x\x*"

" String
syn region kString		start=+"+ skip=+\\\\\|\\"+ end=+"+ keepend excludenl matchgroup=None contains=kSpecialChar 
syn match kSpecialChar		"\\[abcfnrtv\\]" contained

" Boolean
syn match kBoolean		/[01]\+b/

" attributes#
syn match kPreproc		/`[spgu]#/

" generic .?.* match - single letter reserved namespace
syn match kFunction		/\.\a\.\a[a-zA-Z0-9]*/
" if you use .Q stuff you'll be sorry..
syn match kDotQ			/\.Q\.\a[a-zA-Z0-9]*/

"Statement separator
syn match kSeparator		";"

" Todo
syn keyword kTodo		TODO FIXME FIX XXX NOTE GOTCHA contained

" I/O 
syn match kFunction		"\<[012]:"

" Parenthesis sanity checker
syn region kZone		matchgroup=Delimiter start="(" matchgroup=Delimiter end=")" transparent contains=ALLBUT,kError,kBraceError,kCurlyError
syn region kZone		matchgroup=Delimiter start="{" matchgroup=Delimiter end="}" transparent contains=ALLBUT,kError,kBraceError,kParenError
syn region kZone		matchgroup=Delimiter start="\[" matchgroup=Delimiter end="]" transparent contains=ALLBUT,kError,kCurlyError,kParenError
syn match kError		"[)\]}]"
syn match kBraceError		"[)}]" contained
syn match kCurlyError		"[)\]]" contained
syn match kParenError		"[\]}]" contained

" sync, even k functions can ramble..
if main_syntax == 'k'
 if exists("k_minlines")
 exec "syn sync minlines=" . k_minlines
 else
 syn sync minlines=100
 endif
endif

if !exists("did_k_syntax_inits")
 let did_k_syntax_inits = 1
 hi link kBoolean		Boolean
 hi link kBraceError		kError
 hi link kComment		Comment
 hi link kConditional		Conditional
 hi link kCurlyError		kError
 hi link kDotQ			WarningMsg
 hi link kError			Error
 hi link kExit			WarningMsg
 hi link kFunction		Function
 hi link kGlobal		Constant 
 hi link kHandle		Exception
 hi link kIdentifier		Identifier
 hi link kInclude		DiffAdd
 hi link kLang			DiffChange
 hi link kNumber		Number
 hi link kOperator		Operator
 hi link kParenError		kError
 hi link kPlaceholder		SpecialChar
 hi link kPreproc		PreProc
 hi link kRepeat		Repeat
 hi link kSeparator		Delimiter
 hi link kSpecial		SpecialChar
 hi link kSpecialChar		SpecialChar
 hi link kSpecialComment	SpecialComment
 hi link kString		String
 hi link kSymbol		Special
 hi link kTodo			Todo
 hi link kType			Type
endif

let b:current_syntax = "k"

if main_syntax == 'k'
 unlet main_syntax
endif

" vim: ts=8
