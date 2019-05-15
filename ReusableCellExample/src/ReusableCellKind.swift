import Foundation
///
/// ## Examples:
/// extension CustomCell: ReusableCellKind {} // make your subclass conform to the protocol
///
public protocol ReusableCellKind: class {
    static var defaultReuseIdentifier: String { get }
}
