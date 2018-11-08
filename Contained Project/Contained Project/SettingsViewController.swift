
import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Model.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Model.shared.shouldCrab = sender.isOn
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Model.shared.shouldFade = sender.isOn
    }
}
