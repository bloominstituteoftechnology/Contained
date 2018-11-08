
import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Model.shared.shouldRoll = sender.isOn
    }
}
