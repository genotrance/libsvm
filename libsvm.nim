import os

import nimterop/[cimport, git]

const
  base = currentSourcePath.parentDir()

echo base

static:
  cDebug()

  gitPull("https://github.com/cjlin1/libsvm", base/"libsvm", """
svm.h
svm.cpp
""")

cPlugin:
  import
    strutils

  proc onSymbol*(sym: var Symbol) {.exportc, dynlib.} =
    if sym.kind == nskProc and sym.name.contains("svm_"):
      sym.name = sym.name.replace("svm_", "")

cCompile(base/"libsvm/svm.cpp")

cImport(base/"libsvm/svm.h")