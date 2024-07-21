.PHONY: pdf clean macros slides

FLAGS=-outdir=pdf

pdf: macros
	if [ -f "pdf/$(aula).pdf" ]; then \
	  cp pdf/$(aula).pdf backup/$(aula).pdf; \
	  rm pdf/$(aula).pdf; \
	fi
	latexmk $(document) $(FLAGS) -pdf -pv
	cp pdf/$(aula).pdf backup/$(aula).pdf

clean:
	rm pdf/*

macros:
	git submodule update --init --recursive
	git submodule foreach git pull origin master

slides:
	make pdf document=src/$(aula)/$(aula)
