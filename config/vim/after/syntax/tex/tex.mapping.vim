:map <F5>		:!make compile<cr>
:map <S-F5>		:!make zathura<cr>
:map <S-F6>		:!make atril<cr>
:map <S-F7>		:!make pdfsik<cr><cr>
:map <F8>		/\.tex<cr>
:map <S-F8>		gf<cr>
:map <F6>		:!mkdir -p build<cr> \| :!pdflatex -output-directory=./build/ % <cr> 
:map <F7>   :!zathura ./build/%:t:r.pdf<cr>
