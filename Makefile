all: resume.pdf

resume.pdf: resume.tex title.tex mystyle.sty
	pdflatex $< 

clean:
	rm resume.pdf *.aux *.log *.out
