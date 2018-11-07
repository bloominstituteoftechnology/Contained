
import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var skyview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skyview.presentScene(skscene)
    }
    
}
