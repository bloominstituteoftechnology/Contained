
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
    
    
    
    var shouldTint = false
    
    func updateBackgroundColor() {
        guard shouldTint else {
            view.backgroundColor = .white
            return
        }
        view.backgroundColor = Model.shared.colors[0]
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateBackgroundColor()
    }
    
    
  
    @IBAction func changeBackgroundColor(_ sender: UISwitch) {
        shouldTint = sender.isOn
        updateBackgroundColor()
    }
    
}
