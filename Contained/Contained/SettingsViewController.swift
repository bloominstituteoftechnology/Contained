import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
         Model.shared.shouldRoll = true
        } else if !sender.isOn {
            Model.shared.shouldRoll  = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Model.shared.shouldZoom = true
        } else if !sender.isOn {
            Model.shared.shouldZoom = true
        }
    }
}
