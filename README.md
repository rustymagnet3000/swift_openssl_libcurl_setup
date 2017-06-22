## Create http requests using LibCurl and OpenSSL for Crypto and SSL

#### Why?
Setting up a basic HTTP, HTTPS and HTTP + cert pinning with libCurl.  OpenSSL provided the SSL piece not Apple's Secure Transport libraries.

#### Setup
A gremlin inside of me likes trying to integrate C code into Swift frontend.  Built a libCurl static library for HTTP requests

`curl https://raw.githubusercontent.com/winster/build-libcurl-ios/master/build_libcurl_dist.sh openssl | bash`

Accessed the OpenSSL and libCurl C headers via a Swift Bridging Header file. No Import statements required.

####  History
Removed the OpenSSL-Universal framework as you get OpenSSL statically linked inside of the libCurl binary.
