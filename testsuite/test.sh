#!/bin/sh

echo "TEST 00"
cd ..
pwd
latex pstool.ins
cp pstool.sty "testsuite/00 - plain/"

cd "testsuite/00 - plain"
pdflatex -shell-escape "testing.tex"

