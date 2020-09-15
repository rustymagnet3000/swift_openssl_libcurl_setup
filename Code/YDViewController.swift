import UIKit


class YDViewController: UIViewController {

    var datamanager: DataManager!
    @IBOutlet var  buttons: [UIButton] = []
    fileprivate let btnClr = UIColor(red: 1, green: 170/255, blue: 0, alpha: 1)

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
        buttons.forEach { $0.YDButtonStyle(ydColor: btnClr) }
    }
}
