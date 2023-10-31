"-------------------------------------------------------------
" minimal.vim			Version 2.6.2023
"
" Datei-Linux:		/etc/vim/minimal.vim
" Reload					:so %
" 30.10.2023  jkbak ohne 2.Paramter vim !!
"-------------------------------------------------------------
" Mapping
"-------------------------------------------------------------
" alle autocommands löschen: 
autocmd! 
"mapping
:map <F2>   :!clear;jkbak %<cr><cr>:w<cr>
:map <F3>   :!clear;jksik %<cr>:q<cr> 
:map <F10>	:!clear<cr>:q<cr>
:imap <F2> 	<c-c><F2>
filetype plugin indent off

