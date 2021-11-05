:map <leader>t	:echo "Filetyp: sql v10.4.2021"<cr>
"------------------------------------------------------------------------
autocmd BufEnter *.sql :map			<S-F5>   :echomsg " mysql ausführen" <cr>
"------------------------------------------------------------------------
:imap <S-F5> <c-c><S-F5>



"autocmd BufEnter *.sql  :noremap	    <F4>       :!make <cr>>
"autocmd BufEnter *.sql :map	    <F5>       :!mysql <%<cr>

"------------------------------------------------------------------------
autocmd BufEnter *.sql iabbrev	<leader>s select * from  ;
autocmd BufEnter *.sql iabbrev	<leader>i insert into 
autocmd BufEnter *.sql iabbrev	<leader>l load ... 
autocmd BufEnter *.sql iabbrev	<leader>a alter table ... 
autocmd BufEnter *.sql iabbrev	<leader>u update ... 
