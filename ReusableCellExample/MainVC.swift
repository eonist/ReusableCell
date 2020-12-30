import UIKit

class MainVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view = MainView()
        view.backgroundColor = .orange
    }
    override var prefersStatusBarHidden: Bool { true }
}
class MainView: UIView {}
