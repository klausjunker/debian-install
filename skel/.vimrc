"------------------------------------------------------------------------
" vimrc					Version usersql 0.05 (Januar 2020)
" Datei-Linux:	~/.vimrc
"------------------------------------------------------------------------
:set spelllang=de_de,en
:syntax on
:set hlsearch
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set number
:set noswapfile			" kein swap-file
:set backup
:set backupdir=.vimbackup
:au BufWritePre * let &bex='.'.strftime("%m%d%H%M%S")
:set foldmethod=marker  " default {{{ }}}
"---------------------------------------------------------------
" Mapping
"---------------------------------------------------------------
:inoremap <F2>	<ESC>  :w<CR>
:noremap  <F2>  :w<CR>

:inoremap	<F4>  <ESC>:!make <CR><CR>
:noremap	<F4>  :!make <CR><CR>
:inoremap	[1;2S		<ESC>:setlocal invspell<CR>i
:noremap	[1;2S		:setlocal invspell<CR>i

:imap <F8> <ESC> :tabn<CR>
:map  <F8>			 :tabn<CR>
:inoremap	<S-F8>	<ESC>:tabe<cr>
:noremap	<S-F8>	:tabe<cr>

:map <F10>			 :q<CR>
"-----------------------------------------------------------------

"-----------------------------------------------------------------
" sql
"------------------------------------------------------------------------
autocmd BufEnter *.sql :inoremap	<F7>	select * from 
