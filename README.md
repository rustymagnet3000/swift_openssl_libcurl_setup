## Create http requests using LibCurl and OpenSSL for Crypto and SSL

#### Why?
Because a gremlin inside of me likes trying to integrate C code into Swift code.

#### Setup
Used the OpenSSL-Universal framework
Built a libCurl static library for HTTP requests with OpenSSL as preference (not Apple's preferred Darwin crypto)
Accessed the OpenSSL C headers via a Swift Bridging Header file
No Import statements required
