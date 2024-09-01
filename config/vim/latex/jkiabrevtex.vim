echon "jkiabbrevtex.vim " 
"------------------------------------------------------------------
" neu 6.4.2024 
" Struktur ibbrev <buffer>     shortbefehl  ausführung 
"
" autocommand (au) nicht mehr nötig, da Datei nur für tex-files gilt	
"
"------------------------------------------------------------------
"------------------------------------------------------------------
"au BufEnter *.tex iabbrev <=> $\Leftrightarrow$
"iabbrev <buffer> 	
"------------------------------------------------------------------
iabbrev <buffer>  <=> 	$\Leftrightarrow$
iabbrev <buffer>  => 	$\Rightarrow$
iabbrev <buffer>  -> 	$\rightarrow$
iabbrev <buffer>  != 	\overset{!}{=}
iabbrev <buffer>  ,, 	{,} 
iabbrev <buffer>  ** 	\cdot
"------------------------------------------------------------------
iabbrev <buffer>  ße    \begin{enumerate}<CR>\item<CR>\end{enumerate}<CR><Esc>2kA<space>
iabbrev <buffer>  ßi 	\begin{itemize}<CR>\item<CR>\end{itemize}<CR><Esc>2kA<space>
"------------------------------------------------------------------
"au BufEnter *.tex iabbrev ßvek3 \left( \begin{array}{c} 1 \\ 1 \\ 1 \\ \end{array}\right)
"au BufEnter *.tex iabbrev ßitem <esc>I\item <esc>O\begin{itemize}[noitemsep,topsep=0pt,label={$\bullet$}]<esc>jo\item <cr>\item <cr>\end{itemize}<cr><Esc>3kA
"au BufEnter *.tex iabbrev ßtikz \begin{tikzpicture}<CR>\draw (0,0) -- (2,2)<CR>\end{tikzpicture}<CR><ESC>
"au BufEnter *.tex iabbrev ßif \ifthenelse{\thejkgruppezwei=1}{}{}<Esc>4hi
"au BufEnter *.tex iabbrev ßsage  \begin{sagesilent}<CR>f(x)=(x+4)*(x-1)^2<CR>P=plot(f,(x,-6,6))<CR>\end{sagesilent}
"au BufEnter *.tex iabbrev ßsageplot \sageplot[width=6cm]{P}
"au BufEnter *.tex iabbrev ßmini  \begin{minipage}[t][1cm][b]{0.45\textwidth}<CR><CR>\end{minipage}<CR><Esc>
"au BufEnter *.tex iabbrev ßinfo \item \ifdefined\DEBUGINFO ...\\ \fi 
"au BufEnter *.tex iabbrev ßloes       \ifdefined\DEBUGLOES \\Lösung:<CR><CR>\\ \fi 
"------------------------------------------------------------------------
"au BufEnter *.tex iabbrev ßbild <CR>\includegraphics[scale=0.5]{img/}<Esc>ha
"au BufEnter *.tex iabbrev ßs \section{}<Esc>i
"------------------------------------------------------------------------
"au BufEnter *.tex iabbrev ße \begin{enumerate}<CR>\item<CR>\end{enumerate}<CR><Esc>2kA<space>
"------------------------------------------------------------------------
"au BufLeave *.tex silent! iunabbrev ße 
"au BufLeave *.tex iunabbrev ßi 

"------------------------------------------------------------------------
"autocmd BufLeave *.tex call ClearAbbreviations()
"------------------------------------------------------------------------
"autocmd BufEnter *.tex iabbrev ße \begin{enumerate}[noitemsep]<CR>\item<CR>\end{enumerate}<CR><Esc>2kA
"au BufEnter *.tex iabbrev ßf \begin{flushleft}<CR>\end{iflushleft}<Esc>kA<CR>
"au BufEnter *.tex iabbrev ßk <CR>%<ESC>66A-<ESC>o\begin{karte}{<CR>}{<CR><CR>}\end{karte}<CR>%<ESC>66A-<ESC>4k^o
"au BufEnter *.tex iabbrev ßt \begin{tabular}{cc}<CR> \\<CR>\end{tabular}<ESC>kkhhh
"au BufEnter *.tex iabbrev ßtabb \begin{tabbing}<cr> 01234567890\=01234567890\kill\\<cr> \\\end{tabbing}<esc>I
"autocmd BufEnter *.tex iabbrev ßv \begin{verbatim}<CR><CR>\end{verbatim}<CR><ESC>kk^i
"------------------------------------------------------------------------
"au BufEnter *.tex iabbrev ßp1  \marginpar{1 P.}    
"au BufEnter *.tex iabbrev ßp2  \marginpar{2 P.}    
"au BufEnter *.tex iabbrev ßp3  \marginpar{3 P.}    
"au BufEnter *.tex iabbrev ßp4  \marginpar{4 P.}    
"au BufEnter *.tex iabbrev ßp5  \marginpar{5 P.}    

