

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

}
