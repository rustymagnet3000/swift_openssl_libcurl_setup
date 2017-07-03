#include "interface_header.h"

bool basic_https_get()
{
    CURL *curl;
    CURLcode res;
    
    curl_global_init(CURL_GLOBAL_DEFAULT);
    
    curl = curl_easy_init();
    if(curl) {
        curl_easy_setopt(curl, CURLOPT_URL, "https://example.com/");
              
        curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, false);
      
        res = curl_easy_perform(curl);
        /* Check for errors */
        if(res != CURLE_OK){
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                    curl_easy_strerror(res));
        
            curl_easy_cleanup(curl);
            return false;
        }
    }
    
    curl_global_cleanup();
    
    return true;
}
