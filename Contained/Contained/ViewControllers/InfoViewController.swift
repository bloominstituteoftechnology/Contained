import UIKit

class InfoViewController: UIViewController {
    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
