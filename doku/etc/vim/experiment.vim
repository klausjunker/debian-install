"------------------------------------------------------------------------
" experimente 
"------------------------------------------------------------------------
" Mapping
"---------------------------------------------------------------
"wie gf nur mit tabe
"falsch!!! :nnoremap <F12> :execute "tabe " . expand("<cfile>")<CR>
:nnoremap <F12> :tabe <C-R>=expand("<cfile>")<CR><CR>



"
"
set ls=2
map <S-F8>   :set filetype?<cr>
autocmd FileType plaintex source /etc/vim/plaintex.vim
autocmd FileType tex source /etc/vim/plaintex.vim
augroup filetypedetect
  au! BufRead,BufNewFile *.sage,*.spyx,*.pyx setfiletype sage
augroup END
autocmd FileType sage map <F5> :!clear; sage %<cr>
autocmd FileType sage map <F6> :!feh %:t:r.png<cr>

"u00b6:¶  u2b7e ⭾   u00b7 ·   u23b5 ⎵  u00ac ¬
:set listchars=eol:¶,tab:⭾·,nbsp:¬,space:⎵
":echo "experiment - schule.vim"
