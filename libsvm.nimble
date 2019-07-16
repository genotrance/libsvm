# Package

version       = "0.1.4"
author        = "genotrance"
description   = "libsvm wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimterop >= 0.1.0"

task test, "Run tests":
  exec "nim cpp -r tests/tlibsvm.nim"
