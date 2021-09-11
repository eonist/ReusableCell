#if os(iOS)
import UIKit
/**
 * Support for nib
 */
public protocol NibLoadableView: AnyObject {
    static var nibName: String { get }
}
/**
 * Constant for nib
 */
extension NibLoadableView where Self: UIView {
    static var nibName: String {
        String(describing: self)
    }
}
#endif
