## README

* Download https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz

* Extract the tarball into hyperscan directory as `pcre` directory

* Build hyperscan in `hyperscan-build` dir
```bash
$ mkdir hyperscan-build
$ cmake --clean-first ../hyperscan # from git + with pcre dir
$ make -j4
$ make install
$ sudo ln -sf /usr/local/lib/pkgconfig/libhs.pc /usr/lib/pkgconfig/libhs.pc
$ sudo ln -sf /usr/local/lib/pkgconfig/libch.pc /usr/lib/pkgconfig/libch.pc
```

* Chimera gives us the good 'ol PCRE with robust Hyperscan library behind it.

* Run this Rust project that has vectored, streaming and block mode sample
usages of hyperscan along with chimera support:
```bash
$ cargo run
``` 

* References:

    - https://intel.github.io/hyperscan/dev-reference/chimera.html#compilation
    - https://lib.rs/crates/hyperscan