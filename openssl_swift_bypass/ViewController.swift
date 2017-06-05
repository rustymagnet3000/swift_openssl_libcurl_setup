import UIKit

/* Ensure the returned value is Swift 3.0 string (in hex) as opposed to char array pointer  */
/* This uses the strdup function from the C standard library to create a copy of each string */
/******* https://tools.ietf.org/html/rfc4868  sha256_hmac :: Test Vectors from NIST *****/

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        test_openssl_working()
    }

    func test_openssl_working() {
        
        var plaintext: String = "Hi There" /* ASCII ingrediants */
        var size_of_plaintext: Int = plaintext.characters.count
        
        let hmac_output = String(cString: generate_sha256_hmac(strdup(plaintext), &size_of_plaintext))
        
        let nist_sha256_hmac_test_answer = "b0344c61d8db38535ca8afceaf0bf12b881dc200c9833da726e9376c2e32cff7"
        
        // XCTAssertEqual(hmac_output, nist_sha256_hmac_test_answer)
        
        if hmac_output == nist_sha256_hmac_test_answer {
            print("NIST Test - HMAC-SHA256 working ✅")
        }
    }
}
