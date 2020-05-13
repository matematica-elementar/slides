.PHONY: default pdf clean cleanall

FLAGS=-outdir=pdf

default: pdf

pdf: 
	latexmk $(FLAGS) -pdf

clean:
	latexmk $(FLAGS) -c

cleanall:
	latexmk $(FLAGS) -C