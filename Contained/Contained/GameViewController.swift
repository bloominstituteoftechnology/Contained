import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var crabs: SKView!
    
    class GamesViewController: UIViewController {
        @IBOutlet weak var skview: SKView!
        
        var skscene: CustomScene? = nil
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            skscene = CustomScene(size: view.bounds.size)
            skview.presentScene(skscene)
        }
    }
}
