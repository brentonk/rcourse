#!/bin/bash

# Make individual chapter PDFs
# Taken from
# http://tex.stackexchange.com/questions/31334/how-to-create-individual-chapter-pdfs

for i in chap*.tex
do
    j=${i%.tex}
    pdflatex -shell-escape -jobname=rcourse_$j "\includeonly{$j}\input{rcourse}"
done
