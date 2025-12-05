NAME=cv

RM = rm -f
ifeq ($(OS),Windows_NT)
    RM = del /Q
endif

all:
	latexmk -pdf ${NAME}.tex

clean:
	$(RM) ${NAME}.aux ${NAME}.bbl ${NAME}.bcf ${NAME}.fdb_latexmk ${NAME}.fls ${NAME}.log ${NAME}.out ${NAME}.run.xml ${NAME}.blg ${NAME}.toc ${NAME}.synctex.*

distclean: clean
	$(RM) ${NAME}.pdf
