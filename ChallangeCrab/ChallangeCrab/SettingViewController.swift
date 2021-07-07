
import UIKit


class SettingViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        
        Model.shared.shouldRoll = true
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
       
        Model.shared.shouldZoom = true
        
    }
    
   
}
