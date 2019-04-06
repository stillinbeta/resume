all: resume.pdf

text: resume.txt

%.pdf: %.tex title.tex mystyle.sty
	pdflatex $<

%.txt: %.dvi
	catdvi $< > $@

%.dvi: %.tex title.tex mystyle.sty
	latex $<

clean:
	rm *.pdf *.aux *.log *.out *.dvi *.txt

rename:
	cp {,$(TAG)-}resume.pdf
