import UIKit

extension UITableView {
    ///
    /// ## Example:
    /// tableView.register(CustomCell.self)
    ///
    public func register<T: UITableViewCell>(_: T.Type) where T: ReusableCellKind {
        register(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    public func register<T: UITableViewCell>(_: T.Type) where T: ReusableCellKind, T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    ///
    /// ## Examples:
    /// let cell: CustomCell = collectionView.dequeueReusableCell(for: indexPath)
    ///
    public func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCellKind, T: NibLoadableView {
        register(T.self)
        return dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
    }
    public func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCellKind {
        register(T.self)
        return dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
    }
}
