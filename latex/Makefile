# Makefile for R course notes

RNW = $(wildcard *.Rnw)
RNWOUT = $(RNW:.Rnw=.tex)

.SUFFIXES:
.SUFFIXES: .Rnw .tex

all : rcourse.pdf

rcourse.pdf : rcourse.tex $(RNWOUT) front.tex
	pdflatex -shell-escape rcourse && pdflatex -shell-escape rcourse

%.tex : %.Rnw
	R CMD Sweave $<
	./crop_sweave.sh $*

clean :
	latexmk -c

cleanall :
	latexmk -C
	rm -f chap??.tex
	rm -f chap??-*.pdf
