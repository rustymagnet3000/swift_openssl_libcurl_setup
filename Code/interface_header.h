#ifndef interface_header_h
#define interface_header_h

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include "curl.h"
#include "strings.h"

void ydversion();
bool basic_http_get();
bool basic_https_get();
bool https_pinning_get();
#endif /* interface_header_h */
