# Package

version       = "0.1.1"
author        = "genotrance"
description   = "libsvm wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.1.4"

import distros
import ospaths

var cmd = ""
if detectOs(Windows):
    cmd = "cmd /c "

task setup, "Checkout and generate":
    rmFile("libsvm.nim")
    exec cmd & "nimgen libsvm.cfg"
    mvFile("libsvm"/"svm.nim", "libsvm.nim")

before install:
    setupTask()

task test, "Run tests":
    withDir("tests"):
        exec "nim cpp -r svmtest"
