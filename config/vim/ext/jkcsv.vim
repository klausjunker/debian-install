"------------------------------------------------------------------------
" csv
"---------------------------------------------------------------
" F4 wuerfeln! 
nnoremap <buffer> <F4> :2,$ !shuf<cr>
"
" F5: aktualisieren: 1. nummer löschen 2. sortieren 3. neu nummeriren !
"
nnoremap <buffer> <F5> :%s/,[0-9]*$//g<CR> :2,$sort<bar>2,$s/$/,/<Bar>2,$s/$/\=line('.') - 1<cr>:noh<CR><cr>
"
"Nummer entfernen
"
nnoremap <buffer> <S-F5> :%s/,[0-9]*$//g<CR>

"sortieren append , laufende Nummer hinzufügen
"nnoremap <buffer> <F6> :2,$sort<bar>2,$s/$/,/<Bar>2,$s/$/\=line('.') - 1<cr>:noh<CR><cr>

"temp:
nnoremap <buffer> <F7>   :tabe /ex/temp/buffer.csv<cr>

