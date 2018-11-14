import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var spriteKitView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        spriteKitView.presentScene(skscene)
    }
    
}

