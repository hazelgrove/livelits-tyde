MAIN=palettes-paper

all:
	pdflatex $(MAIN)

bib:
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)
	bibtex $(MAIN)
	pdflatex $(MAIN)

clean: 
	rm -f *.aux *.log *.out $(MAIN).bbl main.blg main.pdf

