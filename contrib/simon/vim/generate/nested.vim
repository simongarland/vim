
" modified from John Gilmore's original script
" http://www.vim.org/scripts/script.php?script_id=1230

" lowkey initial ([ and {
hi link level16c kIdentifier
hi link levelp16c kIdentifier
hi link crly16c kIdentifier

if &bg == "dark"
	hi level1c ctermfg=magenta guifg=green1 
	hi level2c ctermfg=red guifg=springgreen1 
	hi level3c ctermfg=yellow guifg=cyan1
	hi level4c ctermfg=green guifg=slateblue1 
	hi level5c ctermfg=cyan guifg=magenta1 
	hi level6c ctermfg=magenta guifg=purple1 
	hi level7c ctermfg=red guifg=red1
	hi level8c ctermfg=yellow guifg=orange1 
	hi level9c ctermfg=green guifg=yellow1 
	hi level10c ctermfg=cyan guifg=greenyellow 
	hi level11c ctermfg=magenta guifg=green1
	hi level12c ctermfg=red guifg=springgreen1 
	hi level13c ctermfg=yellow guifg=cyan1 
	hi level14c ctermfg=green guifg=slateblue1 
	hi level15c ctermfg=cyan guifg=magenta1
"	hi level16c ctermfg=magenta guifg=purple1 
else
	hi level1c ctermfg=darkmagenta guifg=olivedrab4 
	hi level2c ctermfg=red guifg=green4 
	hi level3c ctermfg=darkyellow guifg=paleturquoise3
	hi level4c ctermfg=darkgreen guifg=deepskyblue4 
	hi level5c ctermfg=blue guifg=darkslateblue 
	hi level6c ctermfg=darkmagenta guifg=darkviolet 
	hi level7c ctermfg=red guifg=red3
	hi level8c ctermfg=darkyellow guifg=orangered3 
	hi level9c ctermfg=darkgreen guifg=orange2 
	hi level10c ctermfg=blue guifg=yellow3 
	hi level11c ctermfg=darkmagenta guifg=olivedrab4
	hi level12c ctermfg=red guifg=green4 
	hi level13c ctermfg=darkyellow guifg=paleturquoise3 
	hi level14c ctermfg=darkgreen guifg=deepskyblue4 
	hi level15c ctermfg=blue guifg=darkslateblue
"	hi level16c ctermfg=darkmagenta guifg=darkviolet 
endif
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
if &bg == "dark"
	hi levelp1c ctermfg=magenta guifg=green1 
	hi levelp2c ctermfg=red guifg=springgreen1 
	hi levelp3c ctermfg=yellow guifg=cyan1
	hi levelp4c ctermfg=green guifg=slateblue1 
	hi levelp5c ctermfg=cyan guifg=magenta1 
	hi levelp6c ctermfg=magenta guifg=purple1 
	hi levelp7c ctermfg=red guifg=red1
	hi levelp8c ctermfg=yellow guifg=orange1 
	hi levelp9c ctermfg=green guifg=yellow1 
	hi levelp10c ctermfg=cyan guifg=greenyellow 
	hi levelp11c ctermfg=magenta guifg=green1
	hi levelp12c ctermfg=red guifg=springgreen1 
	hi levelp13c ctermfg=yellow guifg=cyan1 
	hi levelp14c ctermfg=green guifg=slateblue1 
	hi levelp15c ctermfg=cyan guifg=magenta1
"	hi levelp16c ctermfg=magenta guifg=purple1 
else
	hi levelp1c ctermfg=darkmagenta guifg=olivedrab4 
	hi levelp2c ctermfg=red guifg=green4 
	hi levelp3c ctermfg=darkyellow guifg=paleturquoise3
	hi levelp4c ctermfg=darkgreen guifg=deepskyblue4 
	hi levelp5c ctermfg=blue guifg=darkslateblue 
	hi levelp6c ctermfg=darkmagenta guifg=darkviolet 
	hi levelp7c ctermfg=red guifg=red3
	hi levelp8c ctermfg=darkyellow guifg=orangered3 
	hi levelp9c ctermfg=darkgreen guifg=orange2 
	hi levelp10c ctermfg=blue guifg=yellow3 
	hi levelp11c ctermfg=darkmagenta guifg=olivedrab4
	hi levelp12c ctermfg=red guifg=green4 
	hi levelp13c ctermfg=darkyellow guifg=paleturquoise3 
	hi levelp14c ctermfg=darkgreen guifg=deepskyblue4 
	hi levelp15c ctermfg=blue guifg=darkslateblue
"	hi levelp16c ctermfg=darkmagenta guifg=darkviolet 
endif
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
if &bg == "dark"
	hi crly1c ctermfg=magenta guifg=green1 
	hi crly2c ctermfg=red guifg=springgreen1 
	hi crly3c ctermfg=yellow guifg=cyan1
	hi crly4c ctermfg=green guifg=slateblue1 
	hi crly5c ctermfg=cyan guifg=magenta1 
	hi crly6c ctermfg=magenta guifg=purple1 
	hi crly7c ctermfg=red guifg=red1
	hi crly8c ctermfg=yellow guifg=orange1 
	hi crly9c ctermfg=green guifg=yellow1 
	hi crly10c ctermfg=cyan guifg=greenyellow 
	hi crly11c ctermfg=magenta guifg=green1
	hi crly12c ctermfg=red guifg=springgreen1 
	hi crly13c ctermfg=yellow guifg=cyan1 
	hi crly14c ctermfg=green guifg=slateblue1 
	hi crly15c ctermfg=cyan guifg=magenta1
"	hi crly16c ctermfg=magenta guifg=purple1 
else
	hi crly1c ctermfg=darkmagenta guifg=olivedrab4 
	hi crly2c ctermfg=red guifg=green4 
	hi crly3c ctermfg=darkyellow guifg=paleturquoise3
	hi crly4c ctermfg=darkgreen guifg=deepskyblue4 
	hi crly5c ctermfg=blue guifg=darkslateblue 
	hi crly6c ctermfg=darkmagenta guifg=darkviolet 
	hi crly7c ctermfg=red guifg=red3
	hi crly8c ctermfg=darkyellow guifg=orangered3 
	hi crly9c ctermfg=darkgreen guifg=orange2 
	hi crly10c ctermfg=blue guifg=yellow3 
	hi crly11c ctermfg=darkmagenta guifg=olivedrab4
	hi crly12c ctermfg=red guifg=green4 
	hi crly13c ctermfg=darkyellow guifg=paleturquoise3 
	hi crly14c ctermfg=darkgreen guifg=deepskyblue4 
	hi crly15c ctermfg=blue guifg=darkslateblue
"	hi crly16c ctermfg=darkmagenta guifg=darkviolet 
endif
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
