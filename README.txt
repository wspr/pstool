__________________
The pstool package
v1.4

A package like "pst-pdf" for processing PostScript graphics
with psfrag labels within pdfLaTeX documets. The difference
with this package is that every graphic is compiled individually,
drastically speeding up compilation time when only a single
figure needs re-processing.

Running `latex` on pstool.tex will produce the files
  pstool.ins, pstool.sty, and README.txt,
and compile the PDF documentation.

Executing `latex pstool.ins` produces the files above
except pstool.ins (and the PDF file, obviously).

Please see the PDF documentation for further information.

Will Robertson & Zebb Prime
Copyright 2008-2010

____________________
Brief change history

v1.4, November 2010:
  - More robust parsing of the main input file to read in the preamble.
    Therefore, \EndPreamble is now required much less often.

v1.3, July 2009:
  - [bitmap] option to control compression of bitmap graphics,
  - Package options may now be set anywhere with \pstoolsetup{},
  - localised pstool options can be set per-graphic.

