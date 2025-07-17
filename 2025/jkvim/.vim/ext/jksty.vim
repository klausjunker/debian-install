"------------------------------------------------------------------------
" sty-files für latex  
"------------------------------------------------------------------------
"nnoremap <buffer> <F7> :retab<cr>:!clear;g++ -o %:t:r %; ./%:t:r<cr>
nnoremap <buffer> <F7>   :tabe /ex/temp/buffer/buffer.sty<cr>
nnoremap <buffer> <F4>   :!texhash %<cr>
"nnoremap <buffer> <F5> :!clear;g++ -o %:t:r %<cr>
"nnoremap <buffer> <F6> :!clear; ./%:t:r<cr>
"u00b6:¶  u2b7e ⭾   u00b7 ·   u23b5 ⎵  u00ac ¬
":set listchars=eol:¶,tab:⭾·,nbsp:¬,space:⎵
":set expandtab
":retab
:set nolist
:set tabstop=4
:set softtabstop=4
":echo "jksty.vim"
