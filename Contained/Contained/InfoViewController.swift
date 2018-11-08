import UIKit

internal class InfoViewController : UIViewController {
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        // return to the root view controller
    }
}
