import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
