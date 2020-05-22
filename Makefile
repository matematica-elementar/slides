.PHONY: default pdf clean cleanall macros

FLAGS=-outdir=pdf

default: pdf

pdf: macros
	latexmk $(document) $(FLAGS) -pdf

clean:
	latexmk $(FLAGS) -c

cleanall:
	latexmk $(FLAGS) -C

macros:
	git submodule update --init --recursive
	git submodule foreach git pull origin master

slides:
	make pdf document=src/$(aula)/$(aula)
