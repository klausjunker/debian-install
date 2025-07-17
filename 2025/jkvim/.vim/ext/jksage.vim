"------------------------------------------------------------------------
" sage 
"------------------------------------------------------------------------

nnoremap <buffer> <F5> :retab<cr>:!clear;sage %<cr>
"u00b6:¶  u2b7e ⭾   u00b7 ·   u23b5 ⎵  u00ac ¬
:set listchars=eol:¶,tab:⭾·,nbsp:¬,space:⎵
:set expandtab
:retab
:set list
":echo "sage.vim"
:nnoremap <F7>    :tabe /ex/temp/buffer/buffer.sage<cr>
set tabstop=4
set shiftwidth=4
