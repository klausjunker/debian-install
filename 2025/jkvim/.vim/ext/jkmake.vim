"------------------------------------------------------------------------
" make 
"------------------------------------------------------------------------
"nnoremap <buffer> <F5> :retab<cr>:!clear;sage %<cr>
"u00b6:¶  u2b7e ⭾   u00b7 ·   u23b5 ⎵  u00ac ¬
:set listchars=eol:¶,tab:⭾·,nbsp:¬,space:⎵
:set noexpandtab
:set softtabstop=0
:set tabstop=4
:set shiftwidth=4
:set copyindent
:set preserveindent
:set list
":echo "make.vim"
:nnoremap <F7>    :tabe /ex/temp/buffer/buffer.make<cr>
set tabstop=4
set shiftwidth=4
