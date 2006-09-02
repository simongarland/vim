" Vim syntax file
" Language:	s
" Maintainer:	Simon Garland <simon@kx.com>
" Last Change:  2005.11.07 

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
  let main_syntax = 's'
endif

" Read the k syntax to start with
source <sfile>:p:h/k.vim
set iskeyword=@,_,48-57,.

syn keyword sFunction create table view primary key references
syn keyword sFunction boolean tinyint smallint int bigint real float char varchar date time
syn keyword sFunction datetime insert into values update set delete select distinct from as 
syn keyword sFunction where group having order asc desc sum min max avg count between 
syn keyword sFunction and or like in union except intersect case when then else end

" Identifier
syn match sIdentifier		"\<\a\w*\>"
syn match sGlobal		"\<\u[A-Z0-9_]*\>"

" Variable name error
syn match  sError		"\<_[a-zA-Z0-9_]\+\>"

" Include
syn match sLang			"^k)"
syn match sError		"^s)"

" symbols
syn match sSymbol		"\(`\<[a-zA-Z0-9\.][a-zA-Z0-9_\.]*\>\)" contains=kType
"syn keyword qType		boolean byte short int long real float char symbol month date datetime time minute second contained 


if !exists("did_s_syntax_inits")
  let did_s_syntax_inits = 1
  hi link sFunction		Function
  hi link sLang			DiffChange
  hi link sError		Error
  hi link sSymbol		Special
  hi link sIdentifier		Identifier
  hi link sGlobal		Constant
 endif

let b:current_syntax = "s"

if main_syntax == 's'
  unlet main_syntax
endif

" vim: ts=8
