all: clean aine.pdf

pdf:
	pdflatex aine.tex

aine.pdf: aine.tex lahteet.bib
	pdflatex aine.tex
	bibtex aine.aux
	pdflatex aine.tex
	pdflatex aine.tex

clean:
	rm -f *~ aine.aux aine.bbl aine.blg aine.log aine.out aine.pdf aine.toc
