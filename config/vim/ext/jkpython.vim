"------------------------------------------------------------------------
" python 
"------------------------------------------------------------------------
nnoremap <buffer> <F5> :retab<cr>:!clear;python3 %<cr>
nnoremap <buffer> <F7>   :tabe /ex/temp/buffer.python<cr>
"u00b6:¶  u2b7e ⭾   u00b7 ·   u23b5 ⎵  u00ac ¬
:set listchars=eol:¶,tab:⭾·,nbsp:¬,space:⎵
:set expandtab
:retab
:set list
":echo "python.vim"
