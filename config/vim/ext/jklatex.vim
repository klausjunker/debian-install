"------------------------------------------------------------------------
" latex filetype=tex 
"---------------------------------------------------------------
set cmdheight=2
echon "\rjklatex.vim "
nnoremap <buffer> <F4> 	 :!make<cr>
nnoremap <buffer> <S-F4> :!texhash /etc/texmf<cr>
nnoremap <buffer> <F5> 	 :!make zathura<cr>
nnoremap <buffer> <F6> 	 :!make atril<cr>
nnoremap <buffer> <F7>   :tabe /ex/temp/buffer/buffer.latex<cr>
nnoremap <buffer> <S-F5> :!make clean<cr><cr>
nnoremap <buffer> <S-F6> :!make init<cr><cr>
nnoremap <buffer> <S-F7> :!JKNAME=%:t:r make -f /etc/junker/latex/Makefile.1<space> 
"-------------------------------------------------------
vnoremap <buffer><F5> 	  :<C-u>'<,'>g!/^%/norm! I%<CR>
vnoremap <buffer><F6> 	  :<C-u>'<,'>g/^%/norm! 0x<CR>
"-------------------------------------------------------
"mapleader:
nnoremap <buffer> <leader>u   <Esc>I\url{<Esc>A}
nnoremap <buffer> <leader>e   <Esc>O\begin{enumerate}<CR>\item<CR>\end{enumerate}<CR><Esc>
nnoremap <buffer> <leader>sss  <Esc>I\subsubsection{<Esc>A}<esc>
nnoremap <buffer> <leader>ss   <Esc>I\subsection{<Esc>A}<esc>
nnoremap <buffer> <leader>s    <Esc>I\section{<Esc>A}<esc>
nnoremap <buffer> <leader>b    <Esc>^vwy<esc>A <esc>p^i\pdfbookmark{<esc>wwhxi}{<esc>A}<cr><esc>
"-------------------------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=2 "im v-mode: Einrücken mit < oder > !
set textwidth=70 "mit gqap Zeilen umbrechen
"-------------------------------------------------------
source /etc/vim/latex/jkspelltex.vim    
source /etc/vim/latex/jkiabrevtex.vim   " ersetzt jkabtex April 2024 
"source /etc/vim/latex/jkersetzen.vim   ??? 
"source /etc/vim/jkabtex.vim   " in vimrc.local gelöscht! März 2024 
"source /etc/vim/jkstyletex.vim    
