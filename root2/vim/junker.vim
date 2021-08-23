"------------------------------------------------------------------
" Datei:	~/.config/vim/junker.vim  "	Haupt-Konfigurations-Datei
" version 10.04.2021	
" aktualisieren in vim mit :source ~/.vimrc
" ~/.config/vim/after/syntax/tex/*.vim
"-------------------------------------------------------------------
:set runtimepath=~/.config/vim,~/.config/vim/after,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons,/var/lib/vim/addons/after
"-------------------------------------------------------------------
":let mapleader = "ß"		
"show :let mapleader				
":map <leader>t :test echo "Filetyp: unbekannt"<cr>
":map <leader>h :echo "Hallo Welt"<cr>
"-------------------------------------------------------------------
:source ~/.config/vim/mapping.vim
:source ~/.config/vim/allgemein.vim
":source ~/.config/vim/funktionen.vim
":source ~/.config/vim/farben.vim

if system('echo $XDG_VTNR') == 7
"  :source ~/.config/vim/gui.vim 
"  :source ~/.config/vim/guiex.vim
"	:echo "Version GUI"  
else
"	:map <leader>x :tabe ~/.config/vim/xterm.vim<cr>
"  :source ~/.config/vim/xterm.vim 
"	:echo "Version konsole"  
endif
"-------------------------------------------------------------------
:redraw!
