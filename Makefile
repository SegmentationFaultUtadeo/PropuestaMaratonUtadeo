##
# Propuesta para la Maratón de Programación Utadeo
#
# @file
# @version 0.1


MAIN = main


all: $(MAIN).pdf


$(MAIN).pdf: $(MAIN).tex referencias.bib
	pdflatex --shell-escape $(MAIN)
	bibtex $(MAIN)
	pdflatex --shell-escape $(MAIN)
	pdflatex --shell-escape $(MAIN)


clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot

cleanall: clean
	rm -f $(MAIN).pdf


# end
