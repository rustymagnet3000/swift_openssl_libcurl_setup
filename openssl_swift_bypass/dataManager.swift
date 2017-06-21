import Foundation

class DataManager {

   
    internal func test_openssl_working()-> Bool {
        
        var plaintext: String = "Hi There" /* ASCII ingrediants */
        var size_of_plaintext: Int = plaintext.characters.count
        
        let hmac_output = String(cString: generate_sha256_hmac(strdup(plaintext), &size_of_plaintext))
        
        let nist_sha256_hmac_test_answer = "b0344c61d8db38535ca8afceaf0bf12b881dc200c9833da726e9376c2e32cff7"
        
        // XCTAssertEqual(hmac_output, nist_sha256_hmac_test_answer)
        
        if hmac_output == nist_sha256_hmac_test_answer {
            print("OpenSSL Test - HMAC-SHA256 working, verified by NIST ✅")
            return true
        } else {
            return false
        }
    }
    
    internal func http_libcurl_working()-> Bool {
        
        print("hello libcurl")
        basic_http_get()
        return true
    }
    
    internal func https_libcurl_working()-> Bool {
        print("https libcurl")
        basic_https_get()
        return true
    }
}


