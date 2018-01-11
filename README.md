This project is a [Nim](https://nim-lang.org/) wrapper for the [libsvm](https://github.com/cjlin1/libsvm) library.

It is distributed as a [Nimble](https://github.com/nim-lang/nimble) package and depends on [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrappers. The libsvm source code is downloaded using Git so having ```git``` in the path is required.

__Installation__

This package can be installed via [Nimble](https://github.com/nim-lang/nimble):

```
> git clone https://github.com/genotrance/libsvm
> cd libsvm
> nimble install
```

This will download, wrap and install the libsvm wrapper in the standard Nimble package location, typically ~/.nimble. Once installed, it can be imported into any Nim program.

__Usage__

```nim
import libsvm

echo LIBSVM_VERSION
```

__Credits__

This project wraps the libsvm source code and all licensing terms of [libsvm](https://github.com/cjlin1/libsvm/blob/master/COPYRIGHT) apply to the usage of this package.

Credits go out to [c2nim](https://github.com/nim-lang/c2nim/) as well without which this package would be greatly limited in its abilities.

__Feedback__

This project is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/genotrance/libsvm) with an MIT license so issues, forks and PRs are most appreciated.
