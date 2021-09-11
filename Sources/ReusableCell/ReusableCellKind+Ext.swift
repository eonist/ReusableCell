#if os(iOS)
import UIKit

extension ReusableCellKind where Self: UIView {
   /**
    * The default identifier for a cell
    */
   public static var defaultReuseIdentifier: String {
      String(describing: self)
   }
}
/**
 * Bulk functionality (convenience)
 * [A.self, B.self].register(self)
 */
extension Array where Element == ReusableCellKind.Type {
   public func register(_ table: UITableView) {
      table.register(self)
   }
}
#endif
