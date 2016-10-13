# requires pandoc, biber, biblatex, xelatex

SLIDES_OPTS = --slide-level 1 -t beamer --template vzg-slides.tex -F multifilter

slides.pdf: slides.md
	pandoc -s -S $(SLIDES_OPTS) $(FILTER) --biblio=bibliography.bib -o $@ $<

