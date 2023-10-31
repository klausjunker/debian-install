"------------------------------------------------------------------------
" sql 
"---------------------------------------------------------------
autocmd FileType sql nnoremap <buffer> <F5> :!mysql < %<cr>
autocmd Filetype sql BufNew,BufEnter /tmp/sql* setlocal filetype=sql
