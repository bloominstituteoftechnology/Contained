import UIKit

class GameViewController: UIViewController {
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
       Model.shared.shouldRoll.toggle()
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom.toggle()
    }
    
}



