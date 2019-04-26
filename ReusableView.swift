import UIKit

extension ReusableCell where Self: UIView {
    public static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}
