" Vim syntax file
" Language: k
" Maintainer: Simon Garland <simon@kx.com>
" Last Change: 2010.08.21

" Remove any old syntax stuff hanging around
syn clear

if !exists("main_syntax")
 let main_syntax = 'k'
endif

setlocal comments=:/,://

" exclude _ in names for k
syn case match
set iskeyword=@,^_,48-57,.

" Operator
syn match kOperator /[/\']/
syn match kOperator /[/\']:/

" highlight Todo and friends in comments
syn keyword kTodo TODO FIXME FIX XXX NOTE GOTCHA contained

" Exit
syn match kExit "^\\\\" contained

" Comments, trailing, wholeline and multi-line
syn region kComment start="^\s*/" end="$" keepend excludenl contains=kTodo
syn region kComment start="\s/" end="$" keepend excludenl contains=kTodo
" multiline comment, bare \ means rest of file is comment
syn region kComment start="^\\\\*\s*$" end="\%$" contains=kTodo,kExit
" multiline comment start / .. end \ 
syn region kComment start="^/\s*$" end="^\\\s*$" keepend excludenl contains=kTodo
" emphasised comment
syn region kSpecialComment start="^\s*//" end="$" keepend excludenl contains=kTodo
syn region kSpecialComment start="\s//" end="$" keepend excludenl contains=kTodo

" Numbers, dates etc 
syn match kNumber "-\=\(\d\+\)\=\.\d*\(e[+-]\=\d\+\)\=[ef]\="
syn match kNumber "-\=\d\+\(e[+-]\=\d\+\)\=[ijhfe]\="
" Timestamp
syn match kNumber "\d\{4}\.[01]\d\.[0123]\dT[012]\d\:[012345]\d:[012345]\d\(\.\d\+\)\="
" Month 
syn match kNumber "\d\{4}\.[01]\dm"
" Time
syn match kNumber "[012]\d:[012345]\d\(:[012345]\d\(\.\d\+\)\=\)\="
" Hex
syn match kNumber "0x\x*"

" special functions 0: 1: 2: 
syn match kFunction "\<[012]:"

" Boolean
syn match kBoolean /[01]\+b/

" generic .?.* match - single letter reserved namespace
" syn match kFunction /\.\a\.\a[a-zA-Z0-9]*/

"Statement separator
syn match kSeparator ";"

" all the nulls and INFs 
syn keyword kSpecial 0N 0Nd 0Ne 0Nh 0Nj 0Nm 0Nn 0Np 0Nt 0Nu 0Nv 0Nz 0W 0Wd 0Wj 0Wm 0Wn 0Wp 0Wt 0Wu 0Wv 0n 0w 0we 0wz

" Identifiers not caught elsewhere 
syn match kGlobal "\<\u[A-Z0-9]*\>"
syn match kPlaceholder "\<[xyz]\>" 
" modified from John Gilmore's original script
" http://www.vim.org/scripts/script.php?script_id=1230
hi level1c ctermfg=brown guifg=RoyalBlue3 
hi level2c ctermfg=Darkblue guifg=SeaGreen3 
hi level3c ctermfg=darkgray guifg=DarkOrchid3
hi level4c ctermfg=darkgreen guifg=firebrick3 
hi level5c ctermfg=darkcyan guifg=RoyalBlue3 
hi level6c ctermfg=darkred guifg=SeaGreen3 
hi level7c ctermfg=darkmagenta guifg=DarkOrchid3
hi level8c ctermfg=brown guifg=firebrick3 
hi level9c ctermfg=gray guifg=RoyalBlue3 
hi level10c ctermfg=black guifg=SeaGreen3 
hi level11c ctermfg=darkmagenta guifg=DarkOrchid3
hi level12c ctermfg=Darkblue guifg=firebrick3 
hi level13c ctermfg=darkgreen guifg=RoyalBlue3 
hi level14c ctermfg=darkcyan guifg=SeaGreen3 
hi level15c ctermfg=darkred guifg=DarkOrchid3
hi level16c ctermfg=red guifg=firebrick3 

syn region level1 matchgroup=level1c start=/\[/ end=/\]/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level2 matchgroup=level2c start=/\[/ end=/\]/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level3 matchgroup=level3c start=/\[/ end=/\]/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level4 matchgroup=level4c start=/\[/ end=/\]/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level5 matchgroup=level5c start=/\[/ end=/\]/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level6 matchgroup=level6c start=/\[/ end=/\]/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level7 matchgroup=level7c start=/\[/ end=/\]/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level8 matchgroup=level8c start=/\[/ end=/\]/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level9 matchgroup=level9c start=/\[/ end=/\]/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level10 matchgroup=level10c start=/\[/ end=/\]/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
syn region level11 matchgroup=level11c start=/\[/ end=/\]/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
syn region level12 matchgroup=level12c start=/\[/ end=/\]/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
syn region level13 matchgroup=level13c start=/\[/ end=/\]/ contains=TOP,level13,level14,level15, level16,NoInParens
syn region level14 matchgroup=level14c start=/\[/ end=/\]/ contains=TOP,level14,level15, level16,NoInParens
syn region level15 matchgroup=level15c start=/\[/ end=/\]/ contains=TOP,level15, level16,NoInParens
syn region level16 matchgroup=level16c start=/\[/ end=/\]/ contains=TOP,level16,NoInParens
" modified from John Gilmore's original script
" http://www.vim.org/scripts/script.php?script_id=1230
hi levelp1c ctermfg=brown guifg=RoyalBlue3 
hi levelp2c ctermfg=Darkblue guifg=SeaGreen3 
hi levelp3c ctermfg=darkgray guifg=DarkOrchid3 
hi levelp4c ctermfg=darkgreen guifg=firebrick3 
hi levelp5c ctermfg=darkcyan guifg=RoyalBlue3 
hi levelp6c ctermfg=darkred guifg=SeaGreen3 
hi levelp7c ctermfg=darkmagenta guifg=DarkOrchid3 
hi levelp8c ctermfg=brown guifg=firebrick3 
hi levelp9c ctermfg=gray guifg=RoyalBlue3 
hi levelp10c ctermfg=black guifg=SeaGreen3 
hi levelp11c ctermfg=darkmagenta guifg=DarkOrchid3 
hi levelp12c ctermfg=Darkblue guifg=firebrick3 
hi levelp13c ctermfg=darkgreen guifg=RoyalBlue3 
hi levelp14c ctermfg=darkcyan guifg=SeaGreen3 
hi levelp15c ctermfg=darkred guifg=DarkOrchid3 
hi levelp16c ctermfg=red guifg=firebrick3 

syn region levelp1 matchgroup=levelp1c start=/(/ end=/)/ contains=TOP,levelp1,levelp2,levelp3,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp2 matchgroup=levelp2c start=/(/ end=/)/ contains=TOP,levelp2,levelp3,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp3 matchgroup=levelp3c start=/(/ end=/)/ contains=TOP,levelp3,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp4 matchgroup=levelp4c start=/(/ end=/)/ contains=TOP,levelp4,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp5 matchgroup=levelp5c start=/(/ end=/)/ contains=TOP,levelp5,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp6 matchgroup=levelp6c start=/(/ end=/)/ contains=TOP,levelp6,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp7 matchgroup=levelp7c start=/(/ end=/)/ contains=TOP,levelp7,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp8 matchgroup=levelp8c start=/(/ end=/)/ contains=TOP,levelp8,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp9 matchgroup=levelp9c start=/(/ end=/)/ contains=TOP,levelp9,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp10 matchgroup=levelp10c start=/(/ end=/)/ contains=TOP,levelp10,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp11 matchgroup=levelp11c start=/(/ end=/)/ contains=TOP,levelp11,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp12 matchgroup=levelp12c start=/(/ end=/)/ contains=TOP,levelp12,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp13 matchgroup=levelp13c start=/(/ end=/)/ contains=TOP,levelp13,levelp14,levelp15, levelp16,NoInParens
syn region levelp14 matchgroup=levelp14c start=/(/ end=/)/ contains=TOP,levelp14,levelp15, levelp16,NoInParens
syn region levelp15 matchgroup=levelp15c start=/(/ end=/)/ contains=TOP,levelp15, levelp16,NoInParens
syn region levelp16 matchgroup=levelp16c start=/(/ end=/)/ contains=TOP,levelp16,NoInParens
" modified from John Gilmore's original script
" http://www.vim.org/scripts/script.php?script_id=1230
hi crly1c ctermfg=brown guifg=RoyalBlue3 
hi crly2c ctermfg=Darkblue guifg=SeaGreen3 
hi crly3c ctermfg=darkgray guifg=DarkOrchid3 
hi crly4c ctermfg=darkgreen guifg=firebrick3 
hi crly5c ctermfg=darkcyan guifg=RoyalBlue3 
hi crly6c ctermfg=darkred guifg=SeaGreen3 
hi crly7c ctermfg=darkmagenta guifg=DarkOrchid3 
hi crly8c ctermfg=brown guifg=firebrick3 
hi crly9c ctermfg=gray guifg=RoyalBlue3 
hi crly10c ctermfg=black guifg=SeaGreen3 
hi crly11c ctermfg=darkmagenta guifg=DarkOrchid3 
hi crly12c ctermfg=Darkblue guifg=firebrick3 
hi crly13c ctermfg=darkgreen guifg=RoyalBlue3 
hi crly14c ctermfg=darkcyan guifg=SeaGreen3 
hi crly15c ctermfg=darkred guifg=DarkOrchid3 
hi crly16c ctermfg=red guifg=firebrick3 

syn region crly1 matchgroup=crly1c start=/{/ end=/}/ contains=TOP,crly1,crly2,crly3,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly2 matchgroup=crly2c start=/{/ end=/}/ contains=TOP,crly2,crly3,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly3 matchgroup=crly3c start=/{/ end=/}/ contains=TOP,crly3,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly4 matchgroup=crly4c start=/{/ end=/}/ contains=TOP,crly4,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly5 matchgroup=crly5c start=/{/ end=/}/ contains=TOP,crly5,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly6 matchgroup=crly6c start=/{/ end=/}/ contains=TOP,crly6,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly7 matchgroup=crly7c start=/{/ end=/}/ contains=TOP,crly7,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly8 matchgroup=crly8c start=/{/ end=/}/ contains=TOP,crly8,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly9 matchgroup=crly9c start=/{/ end=/}/ contains=TOP,crly9,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly10 matchgroup=crly10c start=/{/ end=/}/ contains=TOP,crly10,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly11 matchgroup=crly11c start=/{/ end=/}/ contains=TOP,crly11,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly12 matchgroup=crly12c start=/{/ end=/}/ contains=TOP,crly12,crly13,crly14,crly15, crly16,NoInParens
syn region crly13 matchgroup=crly13c start=/{/ end=/}/ contains=TOP,crly13,crly14,crly15, crly16,NoInParens
syn region crly14 matchgroup=crly14c start=/{/ end=/}/ contains=TOP,crly14,crly15, crly16,NoInParens
syn region crly15 matchgroup=crly15c start=/{/ end=/}/ contains=TOP,crly15, crly16,NoInParens
syn region crly16 matchgroup=crly16c start=/{/ end=/}/ contains=TOP,crly16,NoInParens
syn keyword kPrimitive abs
syn keyword kPrimitive acos
syn keyword kPrimitive asin
syn keyword kPrimitive atan
syn keyword kPrimitive avg
syn keyword kPrimitive bin
syn keyword kPrimitive cos
syn keyword kPrimitive delete
syn keyword kPrimitive div
syn keyword kPrimitive do
syn keyword kPrimitive exec
syn keyword kPrimitive exit
syn keyword kPrimitive exp
syn keyword kPrimitive from
syn keyword kPrimitive getenv
syn keyword kPrimitive i
syn keyword kPrimitive if
syn keyword kPrimitive in
syn keyword kPrimitive insert
syn keyword kPrimitive last
syn keyword kPrimitive like
syn keyword kPrimitive log
syn keyword kPrimitive max
syn keyword kPrimitive min
syn keyword kPrimitive prd
syn keyword kPrimitive select
syn keyword kPrimitive setenv
syn keyword kPrimitive sin
syn keyword kPrimitive sqrt
syn keyword kPrimitive ss
syn keyword kPrimitive sum
syn keyword kPrimitive tan
syn keyword kPrimitive update
syn keyword kPrimitive wavg
syn keyword kPrimitive while
syn keyword kPrimitive within
syn keyword kPrimitive wsum
syn keyword kPrimitive xexp
syn match qLib ".Q.A"
syn match qLib ".Q.Cf"
syn match qLib ".Q.IN"
syn match qLib ".Q.L"
syn match qLib ".Q.M"
syn match qLib ".Q.S"
syn match qLib ".Q.V"
syn match qLib ".Q.a"
syn match qLib ".Q.a0"
syn match qLib ".Q.a1"
syn match qLib ".Q.a2"
syn match qLib ".Q.addmonths"
syn match qLib ".Q.addr"
syn match qLib ".Q.an"
syn match qLib ".Q.b6"
syn match qLib ".Q.chk"
syn match qLib ".Q.cn"
syn match qLib ".Q.d0"
syn match qLib ".Q.dd"
syn match qLib ".Q.def"
syn match qLib ".Q.dpft"
syn match qLib ".Q.dpt"
syn match qLib ".Q.dsftg"
syn match qLib ".Q.dt"
syn match qLib ".Q.en"
syn match qLib ".Q.f"
syn match qLib ".Q.fc"
syn match qLib ".Q.ff"
syn match qLib ".Q.fk"
syn match qLib ".Q.fl"
syn match qLib ".Q.fmt"
syn match qLib ".Q.foo"
syn match qLib ".Q.fp"
syn match qLib ".Q.fs"
syn match qLib ".Q.ft"
syn match qLib ".Q.fu"
syn match qLib ".Q.gc"
syn match qLib ".Q.hdpf"
syn match qLib ".Q.host"
syn match qLib ".Q.id"
syn match qLib ".Q.ind"
syn match qLib ".Q.j10"
syn match qLib ".Q.j12"
syn match qLib ".Q.k"
syn match qLib ".Q.l"
syn match qLib ".Q.n"
syn match qLib ".Q.nA"
syn match qLib ".Q.nct"
syn match qLib ".Q.opt"
syn match qLib ".Q.ord"
syn match qLib ".Q.p"
syn match qLib ".Q.p1"
syn match qLib ".Q.p2"
syn match qLib ".Q.par"
syn match qLib ".Q.pcnt"
syn match qLib ".Q.ps"
syn match qLib ".Q.q0"
syn match qLib ".Q.qa"
syn match qLib ".Q.qb"
syn match qLib ".Q.qd"
syn match qLib ".Q.qe"
syn match qLib ".Q.qm"
syn match qLib ".Q.qp"
syn match qLib ".Q.qt"
syn match qLib ".Q.res"
syn match qLib ".Q.s"
syn match qLib ".Q.s1"
syn match qLib ".Q.s2"
syn match qLib ".Q.sw"
syn match qLib ".Q.t"
syn match qLib ".Q.t0"
syn match qLib ".Q.tab"
syn match qLib ".Q.tt"
syn match qLib ".Q.tx"
syn match qLib ".Q.ty"
syn match qLib ".Q.ua"
syn match qLib ".Q.v"
syn match qLib ".Q.view"
syn match qLib ".Q.w"
syn match qLib ".Q.x0"
syn match qLib ".Q.x1"
syn match qLib ".Q.x10"
syn match qLib ".Q.x12"
syn match qLib ".Q.x2"
syn match qLib ".Q.xy"
syn match qLib ".h.HOME"
syn match qLib ".h.br"
syn match qLib ".h.c0"
syn match qLib ".h.c1"
syn match qLib ".h.cd"
syn match qLib ".h.code"
syn match qLib ".h.data"
syn match qLib ".h.eb"
syn match qLib ".h.ec"
syn match qLib ".h.ed"
syn match qLib ".h.es"
syn match qLib ".h.estr"
syn match qLib ".h.fram"
syn match qLib ".h.ha"
syn match qLib ".h.hb"
syn match qLib ".h.hc"
syn match qLib ".h.he"
syn match qLib ".h.hn"
syn match qLib ".h.hp"
syn match qLib ".h.hr"
syn match qLib ".h.ht"
syn match qLib ".h.hta"
syn match qLib ".h.htac"
syn match qLib ".h.htc"
syn match qLib ".h.html"
syn match qLib ".h.http"
syn match qLib ".h.hu"
syn match qLib ".h.hug"
syn match qLib ".h.hy"
syn match qLib ".h.jx"
syn match qLib ".h.logo"
syn match qLib ".h.nbr"
syn match qLib ".h.pre"
syn match qLib ".h.sa"
syn match qLib ".h.sb"
syn match qLib ".h.sc"
syn match qLib ".h.td"
syn match qLib ".h.text"
syn match qLib ".h.tx"
syn match qLib ".h.ty"
syn match qLib ".h.uh"
syn match qLib ".h.xd"
syn match qLib ".h.xmp"
syn match qLib ".h.xs"
syn match qLib ".h.xt"
syn match qLib ".o.B0"
syn match qLib ".o.C0"
syn match qLib ".o.Cols"
syn match qLib ".o.Columns"
syn match qLib ".o.FG"
syn match qLib ".o.Fkey"
syn match qLib ".o.Gkey"
syn match qLib ".o.Key"
syn match qLib ".o.PS"
syn match qLib ".o.Special"
syn match qLib ".o.Stats"
syn match qLib ".o.T"
syn match qLib ".o.T0"
syn match qLib ".o.TI"
syn match qLib ".o.Tables"
syn match qLib ".o.Ts"
syn match qLib ".o.TypeInfo"
syn match qLib ".o.ex"
syn match qLib ".o.o"
syn match qLib ".o.t"
syn match qLib ".q.aj"
syn match qLib ".q.aj0"
syn match qLib ".q.all"
syn match qLib ".q.and"
syn match qLib ".q.any"
syn match qLib ".q.asc"
syn match qLib ".q.asof"
syn match qLib ".q.attr"
syn match qLib ".q.avgs"
syn match qLib ".q.ceiling"
syn match qLib ".q.cols"
syn match qLib ".q.cor"
syn match qLib ".q.count"
syn match qLib ".q.cov"
syn match qLib ".q.cross"
syn match qLib ".q.csv"
syn match qLib ".q.cut"
syn match qLib ".q.deltas"
syn match qLib ".q.desc"
syn match qLib ".q.dev"
syn match qLib ".q.differ"
syn match qLib ".q.distinct"
syn match qLib ".q.each"
syn match qLib ".q.ej"
syn match qLib ".q.enlist"
syn match qLib ".q.eval"
syn match qLib ".q.except"
syn match qLib ".q.fby"
syn match qLib ".q.fills"
syn match qLib ".q.first"
syn match qLib ".q.fkeys"
syn match qLib ".q.flip"
syn match qLib ".q.floor"
syn match qLib ".q.get"
syn match qLib ".q.group"
syn match qLib ".q.gtime"
syn match qLib ".q.hclose"
syn match qLib ".q.hcount"
syn match qLib ".q.hdel"
syn match qLib ".q.hopen"
syn match qLib ".q.hsym"
syn match qLib ".q.iasc"
syn match qLib ".q.idesc"
syn match qLib ".q.ij"
syn match qLib ".q.inter"
syn match qLib ".q.inv"
syn match qLib ".q.key"
syn match qLib ".q.keys"
syn match qLib ".q.lj"
syn match qLib ".q.load"
syn match qLib ".q.lower"
syn match qLib ".q.lsq"
syn match qLib ".q.ltime"
syn match qLib ".q.ltrim"
syn match qLib ".q.mavg"
syn match qLib ".q.maxs"
syn match qLib ".q.mcount"
syn match qLib ".q.md5"
syn match qLib ".q.mdev"
syn match qLib ".q.med"
syn match qLib ".q.meta"
syn match qLib ".q.mins"
syn match qLib ".q.mmax"
syn match qLib ".q.mmin"
syn match qLib ".q.mmu"
syn match qLib ".q.mod"
syn match qLib ".q.msum"
syn match qLib ".q.neg"
syn match qLib ".q.next"
syn match qLib ".q.not"
syn match qLib ".q.null"
syn match qLib ".q.or"
syn match qLib ".q.over"
syn match qLib ".q.parse"
syn match qLib ".q.peach"
syn match qLib ".q.pj"
syn match qLib ".q.plist"
syn match qLib ".q.prds"
syn match qLib ".q.prev"
syn match qLib ".q.rand"
syn match qLib ".q.rank"
syn match qLib ".q.ratios"
syn match qLib ".q.raze"
syn match qLib ".q.read0"
syn match qLib ".q.read1"
syn match qLib ".q.reciprocal"
syn match qLib ".q.reverse"
syn match qLib ".q.rload"
syn match qLib ".q.rotate"
syn match qLib ".q.rsave"
syn match qLib ".q.rtrim"
syn match qLib ".q.save"
syn match qLib ".q.scan"
syn match qLib ".q.set"
syn match qLib ".q.show"
syn match qLib ".q.signum"
syn match qLib ".q.ssr"
syn match qLib ".q.string"
syn match qLib ".q.sublist"
syn match qLib ".q.sums"
syn match qLib ".q.sv"
syn match qLib ".q.system"
syn match qLib ".q.tables"
syn match qLib ".q.til"
syn match qLib ".q.trim"
syn match qLib ".q.txf"
syn match qLib ".q.type"
syn match qLib ".q.uj"
syn match qLib ".q.ungroup"
syn match qLib ".q.union"
syn match qLib ".q.upper"
syn match qLib ".q.upsert"
syn match qLib ".q.value"
syn match qLib ".q.var"
syn match qLib ".q.view"
syn match qLib ".q.views"
syn match qLib ".q.vs"
syn match qLib ".q.where"
syn match qLib ".q.wj"
syn match qLib ".q.xasc"
syn match qLib ".q.xbar"
syn match qLib ".q.xcol"
syn match qLib ".q.xcols"
syn match qLib ".q.xdesc"
syn match qLib ".q.xgroup"
syn match qLib ".q.xkey"
syn match qLib ".q.xlog"
syn match qLib ".q.xprev"
syn match qLib ".q.xrank"

" hardcode the .z. functions (no way to get them automatically)
syn match qLib "\.z\.D"
syn match qLib "\.z\.K"
syn match qLib "\.z\.N"
syn match qLib "\.z\.P"
syn match qLib "\.z\.T"
syn match qLib "\.z\.W"
syn match qLib "\.z\.Z"
syn match qLib "\.z\.a"
syn match qLib "\.z\.b"
syn match qLib "\.z\.d"
syn match qLib "\.z\.exit"
syn match qLib "\.z\.f"
syn match qLib "\.z\.h"
syn match qLib "\.z\.i"
syn match qLib "\.z\.k"
syn match qLib "\.z\.l"
syn match qLib "\.z\.n"
syn match qLib "\.z\.o"
syn match qLib "\.z\.p"
syn match qLib "\.z\.pc"
syn match qLib "\.z\.pg"
syn match qLib "\.z\.ph"
syn match qLib "\.z\.pi"
syn match qLib "\.z\.po"
syn match qLib "\.z\.pp"
syn match qLib "\.z\.ps"
syn match qLib "\.z\.pw"
syn match qLib "\.z\.q"
syn match qLib "\.z\.s"
syn match qLib "\.z\.t"
syn match qLib "\.z\.ts"
syn match qLib "\.z\.u"
syn match qLib "\.z\.vs"
syn match qLib "\.z\.w"
syn match qLib "\.z\.x"
syn match qLib "\.z\.z"

syn match kIdentifier "\<\a[a-zA-Z0-9]*\>"

" Conditional and similar constructs 
syn keyword kConditional if
syn match kConditional /$\[/me=e-1
syn match kConditional /?\[/me=e-1
syn match kConditional /'\[/me=e-1
syn match kConditional /\.\[/me=e-1
syn match kConditional /@\[/me=e-1

" Repeat
syn keyword kRepeat do while

" in a k script q) and s) switch to other languages, k) is unnecessary 
syn match kLang "^q)"
syn match kLang "^s)"
syn match kError "^k)"

" symbols and specialcase file+connection handles
syn match kSymbol "\(`\<[a-zA-Z0-9\.][a-zA-Z0-9_\.]*\>\)" 
syn match kHandle "\`:\{1,2}\([0-9a-zA-Z\\/.]\+:\=\)\{1,4}"

" attributes `p#, `g#, `s# and `u#
syn match kPreproc /`[spgu]#/

" highlight all the special names used when `XXX$ casting data 
syn match kCast "\`\(boolean\|byte\|short\|int\|long\|real\|float\|char\|symbol\|timestamp\|month\|date\|datetime\|timespan\|time\|minute\|second\)\$\s*"
syn match kCast "\`\(year\|week\|mm\|dd\|hh\|ss\|uu\)\$\s*"

" system cmd
syn match kSyscmd "^\\\<\([12abBcCdeflopPrsStTuvwWxz_]\|cd\|ts\)\>"

" String and handle embedded tabs and newlines correctly 
syn region kString start=+"+ skip=+\\\\\|\\"+ end=+"+ keepend excludenl matchgroup=None contains=kSpecialChar 
syn match kSpecialChar "\\[abcfnrtv\\]" contained

if !exists("did_k_syntax_inits")
 let did_k_syntax_inits = 1
 hi link kBoolean Boolean
 hi link kCast TablineSel
 hi link kComment Comment
 hi link kConditional Conditional
 hi link kContext Directory
 hi link kError Error
 hi link kExit WarningMsg
 hi link kFunction Define
 hi link kGlobal Constant
 hi link kHandle TabLineSel
 hi link kIdentifier Identifier
 hi link kLang Pmenu
 hi link kNumber Number
 hi link kOperator Operator
 hi link kPlaceHolder TabLineSel
 hi link kPreproc kCast
 hi link kPrimitive kFunction
 hi link kRepeat kConditional
 hi link kSeparator Separator
 hi link kSpecial Special
 hi link kSpecialChar SpecialChar
 hi link kSpecialComment SpecialComment
 hi link kString String
 hi link kSyscmd PmenuSel
 hi link kSymbol Typedef
 hi link kTodo Todo
 hi link qLib Keyword
 endif

let b:current_syntax = "k"

if main_syntax == 'k'
 unlet main_syntax
endif
