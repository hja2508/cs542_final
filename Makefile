DOCN = paper
PS = rosette

all: doc
doc:
	pdflatex $(DOCN).tex
	bibtex $(DOCN) || echo "ok"
	pdflatex $(DOCN).tex
	pdflatex $(DOCN).tex

pdf: ps
	ps2pdf14 -dEmbedAllFonts=true $(PS).ps

#ps: doc
#	dvips  -Ppdf -Pcmz -Pamz -t letter -D 600 -G1  $(DOCN).dvi -o $(DOCN).ps
clean:
	rm -f *.aux *.dvi *.idx *.ind *.log *.toc *.bak *.blg *.bbl
	rm -f $(DOCN).pdf
