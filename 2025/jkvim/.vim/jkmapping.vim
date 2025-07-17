"------------------------------------------------------------------------
" Datei-Linux:	~/.vim/jkmapping.vim
"---------------------------------------------------------------
:map <F2>   :w<cr><cr>
:map <F3>   :!mousepad % <cr><cr>
:map <F9>   :tabn<CR>
:map <F10>	:!clear<cr>:q<cr>
nnoremap <F12>   :tabe <C-R>=expand("<cfile>")<CR><CR>
nnoremap <S-F12> :exe '!xdg-open ' . expand('<cfile>') . ' &'<cr>
nnoremap <S-F11> :!mousepad % <cr><cr>
"---------------------------------------------------------------

"---------------------------------------------------------------
:imap <S-F11> <C-o>:!mousepad %<cr><cr>
:imap <F2>	<c-c><F2>
:imap <F10>	<c-c><F10>

"---------------------------------------------------------------
" Bemerkungen: ~/.vim/jkbackup.vim 
"	map/imap <S-F2> :call JKChooseBackupOrVersion()<CR>


"nnoremap <S-F11> :silent !mousepad % &<cr>
"nnoremap <S-F11> "+yy
":imap <F3> <c-c><F3>
"
