import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func done(_ sender: Any) {
        //pops back to the root view controller
        navigationController?.popToRootViewController(animated: true)
    }
    
}
