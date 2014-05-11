#!/bin/sh

(cd "00 - plain/"; sh test.sh)

(cd "01 - beamer/"; sh test.sh)

(cd "02 - subdir/"; sh test.sh)

(cd "03 - bitmaps/"; sh test.sh)

(cd "04 - crossref/"; sh test.sh)

(cd "05 - bib/"; sh test.sh)
