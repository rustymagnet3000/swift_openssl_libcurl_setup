#ifndef GENERATEHMAC_H_   /* Include guard */
#define GENERATEHMAC_H_
#include <stdlib.h>
#include <stdio.h>
#include <string.h> /* required for memset */
#include <openssl/hmac.h>
#include <openssl/sha.h>


unsigned char *generate_sha256_hmac(char *derived_secret, const size_t *derived_secret_length);


#endif // GENERATEHMAC_H_
