all: resume.pdf

resume.pdf: resume.tex
	pdflatex $^

clean:
	rm resume.pdf
