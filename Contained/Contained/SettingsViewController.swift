import Foundation
import UIKit

class SettingsViewController: UIViewController {
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if rollSwitch.isOn {
            Model.shared.shouldRoll = true
        } else if !rollSwitch.isOn {
            Model.shared.shouldRoll = false
        }
                
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if zoomSwitch.isOn {
            Model.shared.sholdZoom = true
        } else if !zoomSwitch.isOn {
            Model.shared.sholdZoom = false
        }
        
    }
    
    @IBOutlet weak var rollSwitch: UISwitch!
    
    @IBOutlet weak var zoomSwitch: UISwitch!
    
    
    
}

// Create IB outlets when you need to access a property = .isOn
