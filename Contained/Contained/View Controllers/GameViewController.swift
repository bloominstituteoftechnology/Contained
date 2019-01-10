import UIKit
import SpriteKit

class GameViewController: UIViewController {
    @IBOutlet var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Settings.shared.recentPosition = CGPoint(x: view.frame.midX, y: view.frame.midY)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
}
