__________________
The pstool package

A package like "pst-pdf" for processing PostScript graphics
with psfrag labels within pdfLaTeX documents. The difference
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
Copyright 2008-2014
Distributed under the LaTeX Project Public License, "maintained" by Will Robertson.

____________________
Brief change history


v1.5d, Oct 2017:
  - Use `shellesc` package for write18 in LuaTeX.

v1.5c:
  - Documentation update; some minor cosmetic code changes.

v1.5b:
  - Fix conflict with beamer, which resets the catcode of @ with \begin{document}.

v1.5a, March 2013:
  - Fix bug introduced in last version in which plain LaTeX compilation
    (producing DVI) produced erroneous output above each figure.

v1.5, February 2013:
  - Fix =/# mixup in Windows ps2pdf options.
  - Check the .tex file for newness when regenerating figures.
  - Add [macro-file=...] for a global file to retrieve psfrag macros
    (default is "\jobname-pstool.tex").
    Thanks to Heinrich Kruger for suggestions for the above.
  - Cross-references and citations within external graphics are now supported.

v1.4, November 2010:
  - More robust parsing of the main input file to read in the preamble.
    Therefore, \EndPreamble is now required much less often.
  - Apparently unreleased to CTAN, oops :)

v1.3, July 2009:
  - [bitmap] option to control compression of bitmap graphics,
  - Package options may now be set anywhere with \pstoolsetup{},
  - localised pstool options can be set per-graphic.

