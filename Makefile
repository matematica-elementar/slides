.PHONY: default pdf clean cleanall macros

FLAGS=-outdir=pdf

default: macros pdf

pdf: 
	latexmk $(FLAGS) -pdf

clean:
	latexmk $(FLAGS) -c

cleanall:
	latexmk $(FLAGS) -C

macros:
	git submodule update --init --recursive
	git submodule foreach git pull origin master
