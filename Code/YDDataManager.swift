import Foundation

class DataManager {

    
    internal func test_openssl_working()-> Bool {
        ydversion()
        return true
    }
    
    internal func http_libcurl_working()-> Bool {
        print("http invoked ..")
        return basic_http_get()
    }
    
    internal func https_libcurl_working()-> Bool {
        print("https only invoked ..")
        return basic_https_get()
    }
    
    internal func https_pinning()-> Bool {
        print("pinning call invoked ..")
        return https_pinning_get()
    }
}
