#ifndef interface_header_h
#define interface_header_h

#include <stdio.h>
#include <stdbool.h>
#include "curl.h"

bool basic_http_get();
bool basic_https_get();
bool https_pinning_get();
#endif /* interface_header_h */
