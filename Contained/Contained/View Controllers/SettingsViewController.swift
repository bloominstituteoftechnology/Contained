import UIKit

class SettingsViewController: UIViewController {
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Settings.shared.waitingCrab = sender.isOn
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }
    
}
