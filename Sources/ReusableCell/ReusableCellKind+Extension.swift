import UIKit

extension ReusableCellKind where Self: UIView {
   /**
    * The default identifier for a cell
    */
   public static var defaultReuseIdentifier: String {
      String(describing: self)
   }
}
