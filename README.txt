__________________
The pstool package
v1.2

A package like "pst-pdf" for processing PostScript graphics
with psfrag labels within pdfLaTeX documets. The difference
with this package is that every graphic is compiled individually,
drastically speeding up compilation time when only a single
figure needs re-processing.

Running `latex` on pstool.tex will produce the files
  pstool.ins, pstool.sty, and README.txt,
and compile the PDF documentation.

Executing `tex pstool.ins` produces the files above
except pstool.ins (and the PDF file, obviously).

Will Robertson & Zebb Prime
Copyright 2008
