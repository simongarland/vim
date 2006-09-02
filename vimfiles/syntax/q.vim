" Vim syntax file
" Language:	q
" Maintainer:	Simon Garland <simon@kx.com>
" Last Change:  2006.02.17 // add 2.3 

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
  let main_syntax = 'q'
endif

" Read the k syntax to start with
source <sfile>:p:h/k.vim
set iskeyword=@,_,48-57,.

syn keyword qFunction abs aj all and any asc asof attr ceiling cols
syn keyword qFunction cor count cov cross csv cut deltas desc dev differ
syn keyword qFunction distinct each enlist except fby fills first flip floor get
syn keyword qFunction group gtime hclose hcount hdel hopen hsym iasc idesc inter inv key
syn keyword qFunction keys lj load lower lsq ltime mavg maxs mcount md5 mdev med meta
syn keyword qFunction mins mmax mmin mmu mod msum neg next not null or peach pj
syn keyword qFunction prds prev rand rank ratios raze reciprocal read0 read1 reverse rload
syn keyword qFunction rotate rsave save set show signum ssr string sublist sums
syn keyword qFunction sv system tables til trim txf type uj ungroup union
syn keyword qFunction upper upsert value var view views vs where xasc xcol
syn keyword qFunction xcols xdesc xexp xgroup xkey xlog xprev xrank

" Identifier
syn match qIdentifier		"\<\a\w*\>"
syn match qGlobal		"\<\u[A-Z0-9_]*\>"

" Variable name error
syn match  qError		"\<_[a-zA-Z0-9_]\+\>"

" Include
syn match qLang			"^k)"
syn match qError		"^q)"

" symbols
syn match qSymbol		"\(`\<[a-zA-Z0-9\.][a-zA-Z0-9_\.]*\>\)" contains=kType
"syn keyword qType		boolean byte short int long real float char symbol month date datetime time minute second contained 

if !exists("did_q_syntax_inits")
  let did_q_syntax_inits = 1
  hi link qFunction		Function
  hi link qLang			DiffChange
  hi link qError		Error
  hi link qSymbol		Special
  hi link qIdentifier		Identifier
  hi link qGlobal		Constant
 endif

let b:current_syntax = "q"

if main_syntax == 'q'
  unlet main_syntax
endif

" vim: ts=8
