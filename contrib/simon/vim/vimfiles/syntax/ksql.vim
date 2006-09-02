" Vim syntax file
" Language:	ksql
" Maintainer:	Simon Garland <simon_garland@bluewin.ch>
" Last Change:	$Date: 2003/02/12 10:57:53 $

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
  let main_syntax = 'ksql'
endif

setlocal comments=:/,://

syn case match

" The ksql reserved words, defined as keywords.
syn keyword ksqlSpecial null

syn keyword ksqlKeyword	add
syn keyword ksqlKeyword	as asc at
syn keyword ksqlKeyword	avg avgs 
syn keyword ksqlKeyword	case ceiling check coalesce
syn keyword ksqlKeyword	column correlation cos count
syn keyword ksqlKeyword	covariance  cross current_database
syn keyword ksqlKeyword	current_date current_time current_timestamp current_user
syn keyword ksqlKeyword	default deltas desc
syn keyword ksqlKeyword	deviation each
syn keyword ksqlKeyword	eachleft eachright else end
syn keyword ksqlKeyword	enlist  exp extract
syn keyword ksqlKeyword	fill fills first fkey
syn keyword ksqlKeyword	floor foreign funcs
syn keyword ksqlKeyword	having in index 
syn keyword ksqlKeyword	into is key
syn keyword ksqlKeyword	keywords last
syn keyword ksqlKeyword	log lower max maxs median meta min mins
syn keyword ksqlKeyword	next nullif
syn keyword ksqlKeyword	on prd prds
syn keyword ksqlKeyword	prev primary privileges rand
syn keyword ksqlKeyword	rank ratios references replace
syn keyword ksqlKeyword	reverse rowcount 
syn keyword ksqlKeyword	show sin
syn keyword ksqlKeyword	skew sqr sqrt substring sum sumf
syn keyword ksqlKeyword	sums table tables take
syn keyword ksqlKeyword	tan tbls then to trim upper
syn keyword ksqlKeyword	values variance
syn keyword ksqlKeyword	vars views when within 

syn keyword ksqlKeyword	not and or
syn keyword ksqlKeyword	abs 
syn keyword ksqlKeyword	in all between exists
syn keyword ksqlKeyword	like 
syn keyword ksqlKeyword union intersect 
syn keyword ksqlKeyword distinct

syn keyword ksqlStatement alter by create
syn keyword ksqlStatement delete drop from grant insert insert1 insert2 
syn keyword ksqlStatement save rsave select load rload
syn keyword ksqlStatement update view where

syn keyword ksqlType char date int float varchar varbinary time timestamp

" Strings and characters:
syn region ksqlString		start=+'+  skip=+\\\\\|\\"+  end=+'+
syn match ksqlSpecialChar 	"\$"

" Numbers:
syn match ksqlNumber		"-\=\<\d*\.\=[0-9_]\>"

" Comments:
" single line
syn region ksqlComment    start=+^/+  end=+$+ keepend contains=ksqlTodo
syn region ksqlComment    start=+^#+  end=+$+ keepend contains=ksqlTodo
syn region ksqlSpecialComment    start=+^//+ end=+$+  keepend contains=ksqlTodo
" multiline comment
syn region ksqlComment		start="^/\s*$"  end="^\\\s*$" contains=ksqlTodo
syn region ksqlComment		start="^\\\s*$"  end="\%$" contains=ksqlTodo

" K Code:
syn region ksqlKcode    start=+\\+  end=+$+ keepend 

" Global variables
syn match  ksqlGlobal "\<[A-Z][a-zA-Z0-9]*\>"

" Todo
syn keyword ksqlTodo TODO FIXME XXX  NOTE GOTCHA contained

syn sync ccomment ksqlComment
syn sync ccomment ksqlSpecialComment

if !exists("did_ksql_syntax_inits")
  let did_ksql_syntax_inits = 1
  hi link ksqlKcode 	Operator
  hi link ksqlComment	Comment
  hi link ksqlGlobal	Constant 
  hi link ksqlKeyword	SpecialKey
  hi link ksqlNumber	Number
  hi link ksqlSpecial	Special
  hi link ksqlSpecialChar	SpecialChar
  hi link ksqlSpecialComment	SpecialComment
  hi link ksqlStatement Function
  hi link ksqlString	String
  hi link ksqlTodo	Todo
  hi link ksqlType	Type
  hi link ksqlParenError Error
  hi link ksqlParen	Normal
endif

let b:current_syntax = "ksql"

if main_syntax == 'ksql'
  unlet main_syntax
endif

" vim: ts=8
