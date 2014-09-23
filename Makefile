# Set main tex file
TEX= main

# This should be the first rule so make will execute this by default
all: $(TEX).pdf

# The pdf tells latexmk to generate a pdf
$(TEX).pdf: $(TEX).tex
	latexmk -pdf -pdflatex="pdflatex" $(TEX).tex
	latexmk -c

clean:
	latexmk -CA