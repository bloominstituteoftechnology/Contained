import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func done(_ sender: Any) {
navigationController?.popToRootViewController(animated: true)
    }
    
}
