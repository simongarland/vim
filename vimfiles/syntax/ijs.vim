" Martin Neitzel's J syntax file
set ai

set iskeyword=N,B,a-z,.
syntax clear
syntax case match
" syntax keyword Comment NB.
syntax keyword jStatement break. continue. for. do. end. if. elseif. else.
syntax keyword jStatement return. select. case. fcase. try. catch.
syntax keyword jStatement while. whilst.

syntax match jString		/'[^']*'/
syntax match jConstant		/[0-9]\+/
syntax match jFunction		/[a-zA-Z][a-zA-Z0-9_]*[ 	]*=[.:]/ " s+0,e-2
syntax match jIdentifier		/[a-zA-Z][a-zA-Z0-9_]*/
" short tokens first because later matches will have precedence:
syntax match jVerb		/[][{=!#$%^*+[|;,<>?-]/
syntax match jAdverb		/[/\~}]/
syntax match jConjunction	/[.:"@&`]/
syntax match jCopula		/=[.:]/
syntax match jConjunction	/[!@^&_`DLS]:/
syntax match jConjunction	/[;!@&dDHT]\./
syntax match jAdverb		/[/\~bft]\./
syntax match jVerb		/[-~#$%^*+|,{}<>?]\./
syntax match jVerb		/[AcCeEijLopr]\./
syntax match jVerb		/[ipq]:/
syntax match jVerb		/[-~#$%^*+[|;,{}<>?\/]:/
syntax match jVerb		/_\{0,1}[0-9]:/
syntax match jPlaceholder	/[mnuvxy]\./
syntax match jComment		/NB\..*/
syntax match jStrongcomment	/NB\.\*.*/

hi link jStatement Conditional
hi link jString String
hi link jConstant Number
hi link jFunction Function
hi link jIdentifier Identifier
hi link jVerb Function
hi link jPlaceholder SpecialChar
hi link jComment Comment
hi link jStrongcomment SpecialComment
hi link jAdverb Operator
hi link jCopula SpecialChar
hi link jConjunction Special



