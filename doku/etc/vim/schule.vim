"------------------------------------------------------------------------
" schule.vim			Version schule 0.1 (26.8.2021) 
" Datei-Linux:		~/.config/schule.vim
" Reload					:so ~/.vimrc
"------------------------------------------------------------------------
"echo "schule 2023-2024 30.10.2023"
:set noerrorbells
:set vb t_vb=
:set spelllang=de_de,en
:syntax on
:set hlsearch
:set tabstop=2
:set expandtab
:set softtabstop=2
:set shiftwidth=2
:set number
:set noswapfile			" kein swap-file
:set foldmethod=marker  " default {{{ }}}
"---------------------------------------------------------------

autocmd FileType python source /etc/vim/python.vim
autocmd FileType sql source /etc/vim/sql.vim
"---------------------------------------------------------------
" Mapping
"---------------------------------------------------------------
:map <F2>   :!clear;jkbak %<cr><cr>:w<cr>
:map <F3>   :!clear;jksik %<cr>:q<cr> 
:map <F9>   :tabn<cr>
:map <F10>	:!clear<cr>:q<cr>

:imap <F2> <c-c><F2>
:imap <F3> <c-c><F3>
