import UIKit

class SettingsViewController: UIViewController {
    
    //setting a variable for the action toggles to start with
    var shouldToggle = false

    @IBAction func toggleRoll(_ sender: UISwitch) {
        shouldToggle = sender.isOn
        Model.shared.shouldRoll = true
        Model.shared.shouldZoom = false
    }
        //trying to figure out how to set up a if else statement to allow if roll is chosen and if roll and zoom are chosen
        /*
         if Model.shared.shouldRoll = true{
            Model.shared. shouldZoom = false
         
         }else{
            
    
        */
        
    @IBAction func toggleZoom(_ sender: UISwitch) {
        shouldToggle = sender.isOn
        Model.shared.shouldZoom = true
        Model.shared.shouldRoll = false
    }
    
}
