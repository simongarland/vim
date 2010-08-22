qf: "syn keyword qFunction  ",/:string asc 1_key .q;

h:read0 `:qheader.txt;
f:read0 `:qfooter.txt;
`:q.vim 0: h,qf,f
\\
