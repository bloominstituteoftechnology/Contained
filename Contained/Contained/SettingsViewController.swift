import UIKit


class SettingsViewController: UIViewController {
    

    @IBAction func toggleRoll(_ sender: UISwitch) {
//        if(sender.isOn == true) {
//            Model.shared.shouldRoll = true
//        }
//        else {
//            Model.shared.shouldRoll = false
//        }
        
       Model.shared.shouldRoll = sender.isOn ? true :  false
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if(sender.isOn == true) {
            Model.shared.shouldZoom = true
        }
        else {
           Model.shared.shouldZoom = false
        }
    }
    
    
    
}
