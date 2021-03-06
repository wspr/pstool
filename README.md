The pstool package
==================

A package like `pst-pdf` for processing PostScript graphics
with psfrag labels within pdfLaTeX documents. The difference
with this package is that every graphic is compiled individually
in a separate process, drastically speeding up compilation time
when only a single figure needs re-processing.

Please see the PDF documentation for further information.

An example and a testsuite is available in the source repository
for the package: <https://github.com/wspr/pstool>

* Copyright 2008–2014 Zebb Prime
* Copyright 2008–2018 Will Robertson


License
-------

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3c or (at your option) any later version.
The latest version of this license is in:
  <http://www.latex-project.org/lppl.txt>

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is Will Robertson.


Change history
--------------

* v1.5e, Jan 2018:
  - New package option `crossref=false` to disable cross-referencing support.

* v1.5d, Oct 2017:
  - Use `shellesc` package for write18 in LuaTeX.

* v1.5c:
  - Documentation update; some minor cosmetic code changes.

* v1.5b:
  - Fix conflict with beamer, which resets the catcode of @ with \begin{document}.

* v1.5a, March 2013:
  - Fix bug introduced in last version in which plain LaTeX compilation
    (producing DVI) produced erroneous output above each figure.

* v1.5, February 2013:
  - Fix =/# mixup in Windows ps2pdf options.
  - Check the .tex file for newness when regenerating figures.
  - Add [macro-file=...] for a global file to retrieve psfrag macros
    (default is "\jobname-pstool.tex").
    Thanks to Heinrich Kruger for suggestions for the above.
  - Cross-references and citations within external graphics are now supported.

* v1.4, November 2010:
  - More robust parsing of the main input file to read in the preamble.
    Therefore, \EndPreamble is now required much less often.
  - Apparently unreleased to CTAN, oops :)

* v1.3, July 2009:
  - [bitmap] option to control compression of bitmap graphics,
  - Package options may now be set anywhere with \pstoolsetup{},
  - localised pstool options can be set per-graphic.

