import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Model.shared.shouldRoll = sender.isOn
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func crabChoice(_ sender: UISegmentedControl) {
 //       Model.shared.crabChoice = sender.
        // TBD: Need to get input and set variable in CustomScene
        
        
    }
    
}



