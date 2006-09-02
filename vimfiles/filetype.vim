" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.k		setfiletype k
  au! BufRead,BufNewFile *.q		setfiletype q
  au! BufRead,BufNewFile *.t		setfiletype ksql
  au! BufRead,BufNewFile *.s		setfiletype s
  au! BufRead,BufNewFile *.ijs		setfiletype ijs
augroup END
