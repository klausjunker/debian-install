" -------------------------------------------------------
" Datei: ~/.vim/jkfiletypes.vim
" -------------------------------------------------------
"
augroup jkfiletypes
  autocmd!
augroup sql
  au BufNewFile,BufRead /tmp/sql* setlocal filetype=sql
augroup END
augroup sage
  au BufNewFile,BufRead *.sage setlocal filetype=sage
augroup END
augroup ics
  au BufRead,BufNewFile *.ics setlocal filetype=ics
augroup END


" LaTeX & Text
autocmd Filetype plaintex   source ~/.vim/ext/jklatex.vim
autocmd Filetype tex  	    source ~/.vim/ext/jklatex.vim
autocmd Filetype text       source ~/.vim/ext/jktext.vim
autocmd Filetype csv        source ~/.vim/ext/jkcsv.vim

" Shell & Make
autocmd Filetype sh         source ~/.vim/ext/jksh.vim
autocmd Filetype make       source ~/.vim/ext/jkmake.vim

" Scripting / Config
autocmd Filetype vim        source ~/.vim/ext/jkvim.vim
autocmd Filetype ics        source ~/.vim/ext/jkics.vim

" Web
autocmd Filetype html       source ~/.vim/ext/jkhtml.vim

" Programming
autocmd Filetype cpp        source ~/.vim/ext/jkcpp.vim
autocmd Filetype python     source ~/.vim/ext/jkpython.vim
autocmd Filetype sage       source ~/.vim/ext/jkpython.vim
autocmd Filetype sql        source ~/.vim/ext/jksql.vim

augroup END
