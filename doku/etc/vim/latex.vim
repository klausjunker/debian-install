"------------------------------------------------------------------------
" latex filetyp=tex 
"---------------------------------------------------------------
"augroup filetypedetect
"  au! BufRead,BufNewFile *.tex setfiletype plaintex
"augroup END
"autocmd FileType plaintex source /etc/vim/plaintex.vim
autocmd FileType plaintex map <F4> :!make<cr>
autocmd FileType plaintex map <F5> :!make zathura<cr>
autocmd FileType tex map <F4> :!make<cr>
autocmd FileType tex map <F5> :!make zathura<cr>
":echo "latex.vim"
