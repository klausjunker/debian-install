"-----------------------------------------------------------------
" Datei:	~/.config/vim/mapping.vim 
" version 10.4.2021
" aktualisieren mit :source ~/.vimrc (-> ~/.config/vim/junker.vim)
"-----------------------------------------------------------------
:let mapleader = "ß"		
"show :let mapleader				
:map <leader>t :echo "Filetyp: unbekannt"<cr>
:map <leader>h :echo "Hallo Welt"<cr>
"-----------------------------------------------------------------
"F1 Hilfe
:map <F2>		:w<CR>
":map <F3>		:map Q @q<cr>
:map <F3>		:call Jksik()<cr>
:map <F4>		:!make<cr>
":map <F5>		:!make pdf<cr>
":map <F6>		:set list!<cr>
":map <F7>		:set spell!<cr>
:map <F9>		:tabn<CR>
:map <F10>	:q<cr>
"-----------------------------------------------------------------
:imap <F2> <c-c><F2>
:imap <F3> <c-c><F3>
":imap <F4> <c-c><F4>
":imap <F5> <c-o><F5>
":imap <F6> <c-o><F6>
":imap <F8> <c-o><F8>
"-----------------------------------------------------------------
if system('echo $XDG_VTNR') == 7
"	:echo "Version GUI s-F1 bis S-F4 Nein"  
	:map <F12>		:echo "Hallo Welt GUI S-F1 bis S-F4 Nein"<cr> 
"	:map <S-F5>		:!make sik<CR>   FREI
"	:map <S-F6>		:echo "sf6"<cr>  FREI
"	:map <S-F7>		:echo "sf7"<cr>  FREI
"	:map <S-F8>		:echo "sf8"<cr>  FREI
	:map <S-F9>   :vert bel help 
	:map <S-F10>  :Vexplore <cr>
	:map <S-F11>  :Vexplore ~/texmf/tex/latex<cr>
	:map <S-F12>  :Vexplore ~/.vim<cr>
  :source ~/.config/vim/guiex.vim
else
"	:echo "Version konsole"  
	:map <F12>		:echo "Hallo Welt Konsole S-F9 bis S-F12 Nein"<cr> 
	:map  [25~ :echo "sf1"<cr>
	:map  [26~ :echo "sf2"<cr>
	:map  [28~ :echo "sf3"<cr>
	:map  [29~ :echo "sf4"<cr>
	:map  [31~ :echo "sf5"<cr>
	:map  [32~ :echo "sf6"<cr>
	:map  [33~ :echo "sf7"<cr>
	:map  [34~ :echo "sf8"<cr>
	"	:map <leader>x :tabe ~/.vim/xterm.vim<cr>
	"  :source ~/.vim/xterm.vim 
endif
"-------------------------------------------------------------------
