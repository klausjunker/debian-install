let mapleader = "ß"
map <F12> :echo "tex-test " <bar> set ft?<cr>
map <leader>e <Esc>O\begin{enumerate}<CR>\item<CR>\end{enumerate}<CR><Esc>
map <leader>h  :echo "ßh: /etc/vim/plaintex.vim  TEST OK!"<cr>
"------------------------------------------------------------------
autocmd BufEnter *.tex iabbrev <=> $\Leftrightarrow$
autocmd BufEnter *.tex iabbrev => $\Rightarrow$
autocmd BufEnter *.tex iabbrev -> $\rightarrow$
autocmd BufEnter *.tex iabbrev != \overset{!}{=}
autocmd BufEnter *.tex iabbrev ,, {,} 
autocmd BufEnter *.tex iabbrev ** \cdot
"------------------------------------------------------------------
autocmd BufEnter *.tex iabbrev ßvek3 \left( \begin{array}{c} 1 \\ 1 \\ 1 \\ \end{array}\right)
autocmd BufEnter *.tex iabbrev ßitem <esc>I\item <esc>O\begin{itemize}[noitemsep,topsep=0pt,label={$\bullet$}]<esc>jo\item <cr>\item <cr>\end{itemize}<cr><Esc>3kA
autocmd BufEnter *.tex iabbrev ßtikz \begin{tikzpicture}<CR>\draw (0,0) -- (2,2)<CR>\end{tikzpicture}<CR><ESC>
autocmd BufEnter *.tex iabbrev ßif \ifthenelse{\thejkgruppezwei=1}{}{}<Esc>4hi
autocmd BufEnter *.tex iabbrev ßsage  \begin{sagesilent}<CR>f(x)=(x+4)*(x-1)^2<CR>P=plot(f,(x,-6,6))<CR>\end{sagesilent}
autocmd BufEnter *.tex iabbrev ßsageplot \sageplot[width=6cm]{P}
autocmd BufEnter *.tex iabbrev ßmini  \begin{minipage}[t][1cm][b]{0.45\textwidth}<CR><CR>\end{minipage}<CR><Esc>
autocmd BufEnter *.tex iabbrev ßinfo \item \ifdefined\DEBUGINFO ...\\ \fi 
autocmd BufEnter *.tex iabbrev ßloes       \ifdefined\DEBUGLOES \\Lösung:<CR><CR>\\ \fi 
"------------------------------------------------------------------------
autocmd BufEnter *.tex iabbrev ßbild <CR>\includegraphics[scale=0.5]{img/}<Esc>ha
autocmd BufEnter *.tex iabbrev ßurl <Esc>I\url{<Esc>A}
autocmd BufEnter *.tex iabbrev ßs \section{}<Esc>i
autocmd BufEnter *.tex iabbrev ße \begin{enumerate}<CR>\item<CR>\item<CR>\end{enumerate}<CR><Esc>2kA
"autocmd BufEnter *.tex iabbrev ße \begin{enumerate}[noitemsep]<CR>\item<CR>\end{enumerate}<CR><Esc>2kA
autocmd BufEnter *.tex iabbrev ßf \begin{flushleft}<CR>\end{iflushleft}<Esc>kA<CR>
autocmd BufEnter *.tex iabbrev ßk <CR>%<ESC>66A-<ESC>o\begin{karte}{<CR>}{<CR><CR>}\end{karte}<CR>%<ESC>66A-<ESC>4k^o
autocmd BufEnter *.tex iabbrev ßt \begin{tabular}{cc}<CR> \\<CR>\end{tabular}<ESC>kkhhh
autocmd BufEnter *.tex iabbrev ßtabb \begin{tabbing}<cr> 01234567890\=01234567890\kill\\<cr> \\\end{tabbing}<esc>I
autocmd BufEnter *.tex iabbrev ßv \begin{verbatim}<CR><CR>\end{verbatim}<CR><ESC>kk^i
"------------------------------------------------------------------------
autocmd BufEnter *.tex iabbrev ßp1  \marginpar{1 P.}    
autocmd BufEnter *.tex iabbrev ßp2  \marginpar{2 P.}    
autocmd BufEnter *.tex iabbrev ßp3  \marginpar{3 P.}    
autocmd BufEnter *.tex iabbrev ßp4  \marginpar{4 P.}    
autocmd BufEnter *.tex iabbrev ßp5  \marginpar{5 P.}    

