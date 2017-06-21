import UIKit

class ViewController: UIViewController {

    var datamanager: DataManager!
    @IBOutlet weak var openssl_test_btn: UIButton!
    @IBOutlet weak var openssl_test_lbl: UILabel!
    @IBOutlet weak var http_test_lbl: UILabel!
    @IBOutlet weak var https_test_lbl: UILabel!
    @IBOutlet weak var https_cert_test_lbl: UILabel!
    
    @IBAction func openssl_button(_ sender: Any) {
        
        if datamanager.test_openssl_working() == true {
            openssl_test_lbl.text = "✅"
        } else {openssl_test_lbl.text = "⛔️"}
        
    }
    
    @IBAction func http_button(_ sender: Any) {
        if datamanager.http_libcurl_working() == true {
            http_test_lbl.text = "✅"
        } else {http_test_lbl.text = "⛔️"}
        
    }

    @IBAction func https_button(_ sender: Any) {
        if datamanager.https_libcurl_working() == true {
            https_test_lbl.text = "✅"
        } else {https_test_lbl.text = "⛔️"}
    }

    @IBAction func https_pinning_button(_ sender: Any) {
        https_cert_test_lbl.text = "TBD"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datamanager = DataManager()
    }
}
