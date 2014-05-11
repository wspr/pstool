#!/bin/sh

echo "TEST 00"
cd ..
pwd
latex pstool.ins
cp pstool.sty "testsuite/00 - plain/"

cd "testsuite/00 - plain"
git clean
pdflatex -shell-escape "testing.tex"



echo "TEST 01"
cd ..
pwd
latex pstool.ins
cp pstool.sty "testsuite/01 - beamer/"

cd "testsuite/01 - beamer"
git clean
pdflatex -shell-escape "testing.tex"

