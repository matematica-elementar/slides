.PHONY: default pdf clean cleanall macros slides

FLAGS=-outdir=pdf

default: pdf

pdf: macros
	latexmk $(document) $(FLAGS) -pdf -pv

clean:
	rm pdf/*

macros:
	git submodule update --init --recursive
	git submodule foreach git pull origin master

slides:
	make pdf document=src/$(aula)/$(aula)
