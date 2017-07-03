import UIKit

struct Important_Person {
    var title: String
    var firstname: String
    var password: String
    
    init(firstname: String){
        self.title = "Doctor"
        self.firstname = firstname
        self.password = "secret_password"
    }
}

var global_var = "happy secret outside of a class"

class YDViewController: UIViewController {

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
        if datamanager.https_pinning() == true {
            https_cert_test_lbl.text = "✅"
        } else {https_cert_test_lbl.text = "⛔️"}
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datamanager = DataManager()
        var person = Important_Person(firstname: "Bob")

    }
}
