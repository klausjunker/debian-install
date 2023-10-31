"-------------------------------------------------------------
" junker.vim			Version 20.10.2023
"
" mit augroup latex
"
" Datei-Linux:		/etc/vim/junker.vim
" Reload					:so %
"-------------------------------------------------------------
" Mapping
"-------------------------------------------------------------
:nnoremap <F12> :tabe <C-R>=expand("<cfile>")<CR><CR>
"-------------------------------------------------------------
" alles löschen: 
  autocmd! 
"au = autocmd
augroup latex
  au BufNewFile,BufRead *.tex set filetype=tex
  au FileType tex nnoremap <buffer> <F4> :!make<cr><cr>
  au FileType tex nnoremap <buffer> <F5> :!make zathura<cr>
  au FileType tex nnoremap <buffer> <F6> :!rm build/*<cr>
  au FileType tex nnoremap <buffer> <F7> :tabe ~/temp/buffer
  "au FileType tex imap <buffer> <F6> <c-c><F6>
  "au FileType tex imap <buffer> <F7> <c-c><F7>
augroup END

