# Package

version       = "0.2.0"
author        = "genotrance"
description   = "libsvm wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimterop >= 0.1.0"

import strformat

task test, "Run tests":
  exec "nim cpp --path:. -r tests/tlibsvm.nim"

task docs, "Generate docs":
  exec &"nim doc -o:build/htmldocs/ libsvm.nim"

task docsPublish, "Generate and publish docs":
  # Uses: pip install ghp-import
  docsTask()
  exec &"ghp-import --no-jekyll -fp build/htmldocs"
