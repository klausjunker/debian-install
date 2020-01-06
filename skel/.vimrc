"------------------------------------------------------------------------
" vimrc					Version usersql 0.05 (Januar 2020)
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
:set backup
:set backupdir=~/.vimbackup
:au BufWritePre * let &bex='.'.strftime("%m%d%H%M%S")
:set foldmethod=marker  " default {{{ }}}
"---------------------------------------------------------------
" Mapping
"---------------------------------------------------------------
:imap <F2>	<ESC>:w<CR>
:map  <F2>  :w<CR>

:imap	<F4>  <ESC>:!make <CR><CR>
:map	<F4>  :!make <CR><CR>
:imap	[1;2S		<ESC>:setlocal invspell<CR>i
:map	[1;2S		:setlocal invspell<CR>i

:imap <F8> <ESC> :tabn<CR>
:map  <F8>			 :tabn<CR>
:imap	<S-F8>	<ESC>:tabe<cr>
:map	<S-F8>	:tabe<cr>

:imap <F10>			 <ESC>:!clear<cr>:q<cr>
:map <F10>			 :!clear<cr>:q<cr>
"-----------------------------------------------------------------

"-----------------------------------------------------------------
" sql
"------------------------------------------------------------------------
autocmd BufEnter *.sql :inoremap	<F7>	select * from 
