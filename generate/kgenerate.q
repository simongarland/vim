lib:asc"syn match qLib \"",/:(string raze{d:get x;` sv'x,'1 _ key d}'[gf:` sv '`,'`,key `]),\:"\"";
kp:asc"syn keyword kPrimitive ",/:string .Q.res,`from`i;

h:read0 `:kheader.txt;
f:read0 `:kfooter.txt;
/ fold in Rohit's modified nested.vim to hightlight nested ([{.. in diferent colours 
nest:read0 `:nested.vim;
`:k.vim 0: h,nest,kp,lib,f
\\
