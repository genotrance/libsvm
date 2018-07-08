# Package

version       = "0.1.2"
author        = "genotrance"
description   = "libsvm wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.2.3"

import distros
import ospaths

var cmd = ""
if detectOs(Windows):
    cmd = "cmd /c "

task setup, "Checkout and generate":
    exec cmd & "nimgen libsvm.cfg"

before install:
    setupTask()

task test, "Run tests":
    withDir("tests"):
        exec "nim cpp -r svmtest"
