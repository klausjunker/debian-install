"------------------------------------------------------------------------
" schule.vim			Version schule 0.1 (26.8.2021) 
" 30.10.2023   mit augroup python und mappig <F5>: python und sql
" Datei-Linux:		~/.config/schule.vim
" Reload					:so ~/.vimrc
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
augroup PythonMappings
  autocmd!
  autocmd FileType python nnoremap <buffer> <F5> :!python3 % <CR>
augroup END
augroup sql
	autocmd!
	autocmd BufNew,BufEnter /tmp/sql* setlocal filetype=sql
  autocmd FileType sql nnoremap <buffer> <F5> :!mysql < % <CR>
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
