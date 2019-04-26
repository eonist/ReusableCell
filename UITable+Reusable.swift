import UIKit

extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) where T: ReusableCell {
        register(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    func register<T: UITableViewCell>(_: T.Type) where T: ReusableCell, T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    ///
    /// ## Examples:
    /// let cell: CustomCell = collectionView.dequeueReusableCell(for: indexPath)
    ///
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCell, T: NibLoadableView {
        register(T.self)
        return dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
    }
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCell {
        register(T.self)
        return dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
    }
}
