" Aktivieren der Rechtschreibung für DE & EN
setlocal spell
setlocal spelllang=de
"setlocal spellfile=~/.vim/spell/de.utf-8.add  -> Nein  !!


" Kommentare ausschließen
"syntax match texComment /^\s*%.*$/ contains=@NoSpell
syntax match texComment /%.*/ contains=@NoSpell

" LaTeX-Befehle mit Argumenten ignorieren: \befehl{...}
"syntax match texCommandArg /\\\a\+\s*{[^}]*}/ contains=@NoSpell
" Nur das Argument nach LaTeX-Befehl ausschließen – nicht den Befehl selbst
syntax match texCommandArg /\\\a\+\s*\zs{[^}]*}/ contains=@NoSpell


" Strings ausschließen
syntax match texString /"\([^"]*\)"/ contains=@NoSpell

" Spellcheck für alle sichtbaren Gruppen aktivieren
syntax spell toplevel

