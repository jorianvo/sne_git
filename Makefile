# Used:
# http://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project at 23-09-2014
# http://robjhyndman.com/hyndsight/makefiles/ at 23-09-2014
#
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