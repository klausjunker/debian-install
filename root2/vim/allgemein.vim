"---------------------------------------------------------------
" Datei:	~/.config/vim/allgemein.vim						
"v0.2 10.4.2021
":silent !mkdir -p ./temp :set backupdir=./temp 
"v0.1 16.8.2020
"mehrere Optionen in einer Zeile        
"---------------------------------------------------------------
:let g:tex_flavor='latex'
" anzeigen mit :set ft?    --> tex   
"---------------------------------------------------------------
au BufNewFile,BufRead *.sage set ft=sage
filetype plugin on
"---------------------------------------------------------------
:set visualbell
:set laststatus=2
:set cmdheight=2
:set confirm	" Abfrage speichern abbrechen?
"set listchars=eol:$,tab:>-
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"---------------------------------------------------------------
"case insensitive,
"wenn Suchstring Großbuchstabe enthält case sensitive
:set ignorecase smartcase
"---------------------------------------------------------------
"Rechtschreibung <F6> umschalten  :set spell!
":set spell
":setlocal spell spelllang=de
":setlocal spell spelllang=en_us
":set spellfile=~/.config/vim/spell/de.utf-8.spl
":set spellfile=~/.vim/de.utf-8.add
"---------------------------------------------------------------
:syntax on
:set hlsearch
:set tabstop=2 softtabstop=2 shiftwidth=2
:set number
"---------------------------------------------------------------
:set noswapfile			" kein swap-file
:set backup
:silent !mkdir -p ./temp
:set backupdir=./temp
:au BufWritePre * let &bex='.'.strftime("%Y%m%d-%H:%M:%S") 
"---------------------------------------------------------------
:set foldmethod=marker  " default {{{ }}}
