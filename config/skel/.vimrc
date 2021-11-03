"------------------------------------------------------------------------
" vimrc					Version schule 0.1 (26.8.2021) 
" Datei-Linux:	~/.vimrc
"------------------------------------------------------------------------
:set noerrorbells
:set vb t_vb=
:set spelllang=de_de,en
:syntax on
:set hlsearch
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set number
:set noswapfile			" kein swap-file
:set foldmethod=marker  " default {{{ }}}
"---------------------------------------------------------------
augroup sql
	autocmd!
	autocmd BufNew,BufEnter /tmp/sql* setlocal filetype=sql
augroup END
"---------------------------------------------------------------
" Mapping
"---------------------------------------------------------------
:map <F2>   :!jkbak %<cr><cr>:w<CR>
:map <F3>   :!jksik %<cr><cr>
:map <F9>   :tabn<CR>
:map <F10>	:!clear<cr>:q<cr>

:imap <F2> <c-c><F2>
:imap <F3> <c-c><F3>
