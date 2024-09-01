augroup sql
  au BufNewFile,BufRead /tmp/sql* setlocal filetype=sql
augroup END
augroup csv
  au BufNewFile,BufRead *.csv setlocal filetype=csv
augroup END
augroup sage
  au BufNewFile,BufRead *.sage setlocal filetype=sage
augroup END
