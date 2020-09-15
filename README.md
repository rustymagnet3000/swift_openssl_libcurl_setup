## Using OpenSSL with Swift
This repo uses `libCurl` as a wrapper around the `OpenSSL` code.  Both are written in `C` but `libCurl` has a lot of helpful code to make coding quicker and less error prone.

The real code in this repo is wrriten in `C`, despite requiring `Swift 5.0` for XCode to build.  I use a `Bridging Header` file to allow `Swift` to call `C`.

#### Setup
Clone the repo.

You then need to link a version of the static library `libcurl.a`.

To build this file locally:
```
curl -O https://curl.haxx.se/download/curl-7.72.0.tar.xz
tar xf curl-7.72.0.tar.xz
cd curl-7.72.0
curl https://raw.githubusercontent.com/sinofool/build-libcurl-ios/master/build_libcurl_dist.sh openssl |bash
```

Now drag those files into XCode project ( including the Header files ).

Thanks to [site][b171adad] to build `libCurl for iOS`.

  [b171adad]: https://github.com/sinofool/build-libcurl-ios "libcurl_build_ios"


####  History
Removed the OpenSSL-Universal framework as you get OpenSSL statically linked inside of the libCurl binary.

Stopped sharing the libCurl.a file via github [ as it is not the correct place for large Binary files ].

Used https://www.doc.ic.ac.uk/lab/cplus/cstyle.html#N10203 to keep me honest.
