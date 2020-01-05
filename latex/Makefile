Name=debian-install
Input=$(Name).tex
Output=$(Name).pdf

$(Output): $(Input)
			pdflatex  --output-directory ./o $(Input)
			atril ./o/$(Output)
		

