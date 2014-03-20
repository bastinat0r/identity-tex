
all: pdf view
	echo 'pling'

pdf: bib
	pdflatex identität.tex > /dev/null
	pdflatex identität.tex

bib:
	pdflatex identität.tex > /dev/null
	biber identität

view:
	evince *.pdf &

clean:
	rm -rf *.toc
	rm -rf *.bbl
	rm -rf *.blg
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.out
	rm -rf *.run.xml
	rm -rf *.bcf
	rm chapters/*.aux
