#!/usr/bin/env texlua

module  = "pstool"

unpackfiles = {}
sourcefiles = {"*.sty"}
typesetfiles = {"*.tex"}
versionform = "ProvidesPackage"
versionfiles = {"*.sty"}

version = "v1.5e"

-- Find and run the build system
kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))
