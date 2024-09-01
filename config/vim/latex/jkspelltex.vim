echon "jkspelltex.vim "
" eigenens spellfile
set spellfile=~/.vim/spell/jklatexspell.utf-8.add
"syntax match JkSlashWords "/\S\+"
"syntax match JkQuotedWords "(\w+)"
"autocmd BufEnter * def link JkSlashWords Normal
"autocmd BufEnter * def link JkQuotedWords Normal
"VimEnter: ganz am ende!
"autocmd VimEnter * syntax match texComment /^\s*%.*$/ contains=@NoSpell
autocmd BufEnter * syntax match jktexComment /%.*$/ contains=@NoSpell
autocmd BufEnter * syntax match texComment /^\s*%.*$/ contains=@NoSpell
autocmd BufEnter * syntax match String /"\([^"]*\)"/ contains=@NoSpell

" Enable spell checking for German / English
set spell spelllang=de,en
" Highlight misspelled words in a specific way
highlight SpellBad ctermfg=1 guifg=Red
"hotkeys
" ]s [s   springen 
"z=  vorschäge
"zg richtig			zw		falsch
"zug zuw							undo!


