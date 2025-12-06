NAME=cv
NAME_TR=cv-tr

RM = rm -f
ifeq ($(OS),Windows_NT)
    RM = del /Q
endif

all:
	latexmk -pdf ${NAME}.tex

clean:
	$(RM) ${NAME}.aux ${NAME}.bbl ${NAME}.bcf ${NAME}.fdb_latexmk ${NAME}.fls ${NAME}.log ${NAME}.out ${NAME}.run.xml ${NAME}.blg ${NAME}.toc ${NAME}.synctex.*
	$(RM) ${NAME_TR}.aux ${NAME_TR}.bbl ${NAME_TR}.bcf ${NAME_TR}.fdb_latexmk ${NAME_TR}.fls ${NAME_TR}.log ${NAME_TR}.out ${NAME_TR}.run.xml ${NAME_TR}.blg ${NAME_TR}.toc ${NAME_TR}.synctex.*

distclean: clean
	$(RM) ${NAME}.pdf
	$(RM) ${NAME_TR}.pdf
