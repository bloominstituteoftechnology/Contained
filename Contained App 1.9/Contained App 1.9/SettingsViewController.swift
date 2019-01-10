import UIKit
import SpriteKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = true
    }
    
    @IBAction func ToggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = true
    }
    
    @IBAction func toggleHappy(_ sender: Any) {
        Settings.shared.shouldHappy = true
       // crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        
    }
    
    @IBAction func toggleFade(_ sender: Any) {
        Settings.shared.shouldFade = true
        
    }
    
    @IBAction func toggleSpeed(_ sender: Any) {
        Settings.shared.shouldFaster = true
    }
    
}
