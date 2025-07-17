/ex/hilfe/makefile/Makefile
/ex/hilfe/makefile/Makefile-mitsage

	@mkdir -p $(TempDir)
	@mkdir -p $(PdfDir)
	zathura --mode=fullscreen $(PdfDir)/$(Name).pdf
