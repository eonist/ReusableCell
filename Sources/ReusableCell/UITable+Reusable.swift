#if os(iOS)
import UIKit

extension UITableView {
   /**
    * Register Cell
    * ## Examples:
    * tableView.register(CustomCell.self)
    * - Fixme: ⚠️️ Add support for registering multiple cells: register([HCell.self,VCell.self]) etc, see TestRunner for similar code for how to do this
    */
   public func register<T: UITableViewCell>(_: T.Type) where T: ReusableCellKind {
      register(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
   }
   /**
    * Adds support for registering multiple cells: register([HCell.self, VCell.self]) etc
    */
   public func register(_ types: [ReusableCellKind.Type]) {
      types.forEach { register($0.self, forCellReuseIdentifier: $0.defaultReuseIdentifier) }
   }
   /**
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell()
    * - Fixme: ⚠️️ rename to dequeue
    */
   public func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
   /**
    * - Fixme: ⚠️️ rename to dequeue
    */
   public func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableCellKind {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
}
/**
 * Adds indexPath support
 */
extension UITableView {
   /**
    * - Fixme: ⚠️️ Should this maybe return optional?
    * - Fixme: ⚠️️ rename to dequeue
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell(indexPath: indexPath)
    */
   public func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
   }
   /**
    * - Fixme: ⚠️️ rename to dequeue
    */
   public func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath) -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier, for: indexPath) as! T
   }
}
/**
 * Support for Nib
 */
extension UITableView {
   /**
    * ## Examples:
    * let cell: CustomCell = collectionView.dequeueReusableCell()
    * - Fixme: ⚠️️ Should this maybe return optional?
    * - Fixme: ⚠️️ rename to dequeue
    */
   public func dequeueReusableCell<T: UITableViewCell>(_: T.Type) -> T where T: ReusableCellKind, T: NibLoadableView {
      dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
   }
   /**
    * - Fixme: ⚠️️ Add doc
    */
   public func register<T: UITableViewCell>(_: T.Type) where T: ReusableCellKind, T: NibLoadableView {
      let bundle = Bundle(for: T.self)
      let nib = UINib(nibName: T.nibName, bundle: bundle)
      register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
   }
}
#endif
