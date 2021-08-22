"------------------------------------------------------------------------
" vimrc					Version 0.5 (Juli 2020)
" linux:				~/.vimrc       windows:    _vimrc oder _gvimrc   
" für user root
" Reload vimrc configuration file :source $MYVIMRC<CR>
"------------------------------------------------------------------------
:set backupdir=/temp/vimbackup
"------------------------------------------------------------------------
" <Leader>:= "\" (default)
let mapleader = "ß"				
"set listchars=eol:$,tab:>-
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"------------------------------------------------------------------------
" zum Testen
:map <F7>			:echo "klaus-normal-f7"<cr>
"------------------------------------------------------------------------
filetype plugin on
"source ~/.vim/after/syntax/tex.vim
"source ~/.vim/after/syntax/c.vim
"------------------------------------------------------------------------
:set spelllang=de_de,en
:syntax on
:set hlsearch
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set number
:set noswapfile			" kein swap-file
:set backup
:au BufWritePre * let &bex='.'.strftime("%y%m%d-%H%M%S")
:set foldmethod=marker  " default {{{ }}}
"---------------------------------------------------------------
" Tempfile öffnen <bar> trennt 2 Befehle
nnoremap <Leader>t :tabe <bar> :e /tmp/clipboard/temp<cR>
"---------------------------------------------------------------
:map <F2>  :w<CR>
:map <F6>  :set list!<cr>
:map <F8>  :tabn<CR>
" shift+<F8>
:map [34~	:tabe<CR>
:map <F10>	:q<CR>
"------------------------------- imap
:imap <F2> <c-c><F2>
:imap <F6> <c-o><F6>
:imap <F8> <c-o><F8>
:imap [34~ <c-o>[34~
