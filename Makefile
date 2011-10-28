all: resume.pdf

%.pdf: %.tex title.tex mystyle.sty
	pdflatex $< 

clean:
	rm *.pdf *.aux *.log *.out

rename:
	mv {,$(TAG)-}resume.pdf

