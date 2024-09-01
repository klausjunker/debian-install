"function CommentLines()
function Kommentar()
"    let  l:start = ',' 
" execute start . ',' . a:end . ' normal! I% '
"    let l:count = input('Anzahl der Zeilen: ')
"    let  l:end = l:start + l:count -1 
"    if l:count =~ '^\d\+$' && l:count > 0
"    	let l:count = l:count -1
"	echo l:count . 'klaus'
 "       execute 'normal V'
 "       execute 'normal ' . l:count . 'j'
	":'<,'>normal I%
        execute normal '<,>s/^/% /g'
        "normal <Esc>
"    else
"        echo "Bitte eine gültige Zahl eingeben!"
"    endif
endfunction

" Mappt die Funktion auf einen Tastendruck, z.B. <Leader>c
"nnoremap <Leader>c :call CommentLines()<CR>
"nnoremap <Leader>d :echo "test a"<cr>
"vnoremap <Leader>k :normal I%<cr>
"vnoremap <Leader>l :normal 0x<cr>

