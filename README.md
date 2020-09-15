## Using OpenSSL with Swift
This repo uses `libCurl` as a wrapper around the `OpenSSL` code.  Both are written in `C` but `libCurl` has a lot of helpful code to make coding quicker and less error prone.

#### Setup
Clone the repo.  Nothing special is required.

`libcurl.a` is statically linked to the project.  I will remove it from this repo shortly ( as github is not a place for binary files ).  I used this [site][b171adad] to build `libCurl for iOS`.

  [b171adad]: https://github.com/sinofool/build-libcurl-ios "libcurl_build_ios"

The real code is all in `C`, despite you requiring `Swift 5.0` to build.  I use a `Bridging Header` file to allow `Swift` to call `C`.

####  History
Removed the OpenSSL-Universal framework as you get OpenSSL statically linked inside of the libCurl binary.
