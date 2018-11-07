import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Model.shared.shouldRoll.toggle()
        print(Model.shared.shouldRoll)
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom.toggle()
        print(Model.shared.shouldZoom)
    }
}
