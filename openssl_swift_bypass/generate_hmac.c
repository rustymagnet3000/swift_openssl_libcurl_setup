#include "generate_hmac.h"

static void get_hmac_key(unsigned char *key_ptr, size_t *key_size) {
    
    /* TODO: Replace this 20 char NIST Test Vector Key  */
    memset( key_ptr, 0x0B, sizeof( unsigned char ) * *key_size );
}

/* TODO: add error handling */
unsigned char *generate_sha256_hmac(char *derived_secret, const size_t *derived_secret_length)
{
    HMAC_CTX ctx;
    unsigned int hmac_output_length;
    size_t key_size = 20;
    unsigned char *key_ptr = malloc( sizeof( unsigned char ) * key_size );
    get_hmac_key(key_ptr, &key_size);
    
    unsigned char out[SHA256_DIGEST_LENGTH];
    static unsigned char res_hexstring[32];

    HMAC_Init(&ctx, key_ptr, (int) key_size, EVP_sha256());
    HMAC_Update(&ctx, derived_secret, *derived_secret_length);
    HMAC_Final(&ctx, out, &hmac_output_length);
    
    for(int i = 0; i < hmac_output_length; i++)
        sprintf((char *)&(res_hexstring[i * 2]), "%02x", out[i]);
    
    HMAC_cleanup(&ctx);
    free(key_ptr);
    
    return res_hexstring;
}
