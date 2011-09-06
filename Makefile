all: resume.pdf

resume.pdf: resume.tex title.tex
	pdflatex $< 

clean:
	rm resume.pdf
