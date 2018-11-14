import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        var shouldRoll = false
        shouldRoll = sender.isOn
        if shouldRoll.isOn == true {
         Model.shared.shouldRoll
        }
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
//        var isOn: Bool
//        Model.shared.shouldZoom
    }
}
