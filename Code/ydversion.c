#include "interface_header.h"


void ydversion(){

    curl_version_info_data *data = NULL;
    data = curl_version_info(CURLVERSION_NOW);  // sets data to an address of Struct
    printf("version:\t%s\nlibssh_version:\t%s\nssl_version:\t%s\nHost:\t%s\nAge:\t%d\n",
    data->version, data->libssh_version, data->ssl_version,data->host, data->age);
    
    if(strcmp(data->ssl_version, "SecureTransport")){
        puts("NOT using OpenSSL. Using SecureTransport");
    }
    data = NULL;    // clean-up. No free() required. Just forget pointer reference.
}
