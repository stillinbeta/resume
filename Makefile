all: resume.pdf

resume.pdf: resume.tex title.tex mystyle.sty
	pdflatex $< 

clean:
	rm *.pdf *.aux *.log *.out
