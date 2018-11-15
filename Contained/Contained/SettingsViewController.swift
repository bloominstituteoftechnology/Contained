import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn == true {
         Model.shared.shouldRoll
        } //else { return }
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn == true {
            Model.shared.shouldZoom
        }
    }
}
