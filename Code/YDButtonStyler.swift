import UIKit

extension UIButton {
    func YDButtonStyle(ydColor:UIColor) {
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 1
        self.setTitleColor(UIColor.white, for: .normal)
        self.setTitleColor(UIColor.black, for: .selected)
        self.backgroundColor = ydColor
        
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: 160),
            self.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
}

extension UIView {
    func findViewController() -> UIViewController? {
        if let nextResponder = self.next as? UIViewController {
            return nextResponder
        } else if let nextResponder = self.next as? UIView {
            return nextResponder.findViewController()
        } else {
            return nil
        }
    }
}
