import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = true
    }
    
    @IBAction func ToggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = true
    }
}
