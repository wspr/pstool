#!/bin/sh

(cd ../; pdflatex pstool.tex)

for dir in ./*/
do
    (cd "$dir"; sh test.sh)
done

