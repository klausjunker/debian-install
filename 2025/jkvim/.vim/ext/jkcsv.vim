"---------------------------------------------------------------
" csv
"---------------------------------------------------------------
nnoremap <buffer> <F7>   :tabe /ex/temp/buffer/buffer.csv<cr>
"------------------------------------------------------------------
" #+F6 Filtern! Spalten 2,3,6 longName,foreName,klasse.name
nnoremap <buffer> <S-F6> :%!csvtool -t TAB col 2,3,6 -<cr>
"------------------------------------------------------------------
" F4 wuerfeln! 
nnoremap <buffer> <F4> :2,$ !shuf<cr>
"------------------------------------------------------------------
" #+F4: 1. sortieren 2. neu nummerieren + Zeile 1 mit Sid ergänzen!
nnoremap <buffer> <S-F4> :2,$sort<bar>2,$s/$/,/<Bar>2,$s/$/\=line('.') - 1<cr>:noh<CR><cr><esc>1GddiNachname,Vorname,Klasse,Sid<cr><esc>
"------------------------------------------------------------------
" #+F5  Nummer entfernen
nnoremap <buffer> <S-F5> :%s/,[0-9]*$//g<CR>
"------------------------------------------------------------------
