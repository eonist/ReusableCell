import Foundation
///
/// ## Examples:
/// extension CustomCell: ReusableView {} // make your subclass conform to the protocol
///
public protocol ReusableCell: class {
    static var defaultReuseIdentifier: String { get }
}
