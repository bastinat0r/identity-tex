
all: pdf view
	echo 'pling'

pdf: bib
	pdflatex identität.tex
	pdflatex identität.tex

bib:
	pdflatex identität.tex
	biber identität

view:
	evince *.pdf &
