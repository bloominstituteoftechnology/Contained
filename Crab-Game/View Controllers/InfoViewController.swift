import UIKit

class InfoViewController: UIViewController {
    
//    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 180, height: 180))
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.addSubview(label)
//        label.font = UIFont.boldSystemFont(ofSize: 24)
//        label.textAlignment = .center
//        label.center = view.center
//        label.numberOfLines = 3
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        label.text = """
//                       (V)  o o  (V)
//                       // (CRABS) \\
//                     """
//    }
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
