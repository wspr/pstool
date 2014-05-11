#!/bin/sh

echo "  "
echo "==========="
echo "PSTOOL TEST"
echo "  "

git clean -f

x=`pwd`
cd ../..
pwd
latex pstool.ins
cp pstool.sty "$x"

cd "$x"
pwd
pdflatex -shell-escape "testing.tex"
bibtex "testing"
pdflatex -shell-escape "testing.tex"
