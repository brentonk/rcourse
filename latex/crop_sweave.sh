#!/bin/bash
#
# 'cropall.sh filestem' crops all Sweave PDF output corresponding to
# filestem.Rnw

if test -n "$(shopt -s nullglob; echo ${1}-*.pdf)"
then
    for i in ${1}-*.pdf
    do
        pdfcrop $i
        mv ${i%.pdf}-crop.pdf $i
    done
fi
