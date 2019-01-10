import UIKit
import SpriteKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll.toggle()
    }
    
    @IBAction func ToggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom.toggle()
    }
    
    @IBAction func toggleHappy(_ sender: Any) {
        Settings.shared.shouldHappy.toggle()
       // crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        
    }
    
    @IBAction func toggleFade(_ sender: Any) {
        Settings.shared.shouldFade.toggle()
        
    }
    
    @IBAction func toggleSpeed(_ sender: Any) {
        Settings.shared.shouldFaster.toggle()
    }
}
