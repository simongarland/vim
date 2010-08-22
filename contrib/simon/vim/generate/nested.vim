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
