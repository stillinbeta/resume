all: lizfrost-resume.pdf letter.pdf

text: resume.txt

%.pdf: %.tex title.tex mystyle.sty
	pdflatex $<

%.txt: %.dvi
	catdvi $< > $@

%.dvi: %.tex title.tex mystyle.sty
	latex $<

clean:
	rm -f *.pdf *.aux *.log *.out *.dvi *.txt

TAG ?= lizfrost

rename: $(TAG)-resume.pdf

$(TAG)-%.pdf: %.pdf
	cp $< $@

letter-resume.pdf: letter.pdf resume.pdf
	pdfunite $^ $@

concat: letter-resume.pdf

.PHONY: all clean concat
