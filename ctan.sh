#!/bin/sh

PKG='pstool'

pdflatex -draftmode $PKG.tex
pdflatex $PKG.tex

mkdir -p -v   CTAN-TMPDIR/source/latex/$PKG/
mkdir -p -v   CTAN-TMPDIR/tex/latex/$PKG/
mkdir -p -v   CTAN-TMPDIR/doc/latex/$PKG/example/subdir
mkdir -p -v   CTAN-TMPDIR/$PKG/example/subdir/

cp $PKG.tex   CTAN-TMPDIR/source/latex/$PKG/
cp $PKG.ins   CTAN-TMPDIR/source/latex/$PKG/
cp $PKG.sty   CTAN-TMPDIR/tex/latex/$PKG/

cp $PKG.pdf   CTAN-TMPDIR/doc/latex/$PKG/
cp README.txt CTAN-TMPDIR/doc/latex/$PKG/README

cp $PKG.tex   CTAN-TMPDIR/$PKG/
cp $PKG.ins   CTAN-TMPDIR/$PKG/
cp $PKG.pdf   CTAN-TMPDIR/$PKG/
cp README.txt CTAN-TMPDIR/$PKG/README

cp -R example/              CTAN-TMPDIR/$PKG/example/
cp -R CTAN-TMPDIR/$PKG/example/      CTAN-TMPDIR/doc/latex/$PKG/

cd CTAN-TMPDIR
zip -r $PKG.tds.zip source/ tex/ doc/   -x *.DS_Store
zip -r $PKG.zip   $PKG $PKG.tds.zip     -x *.DS_Store

cd ..
mv CTAN-TMPDIR/$PKG.zip $PKG.zip
rm -rf CTAN-TMPDIR
