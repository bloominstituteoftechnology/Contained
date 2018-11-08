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
    
    @IBAction func toggleCrazy(_ sender: UISwitch) {
        Model.shared.shouldGoCrazy.toggle()
        print(Model.shared.shouldGoCrazy)
    }
    
    
    @IBOutlet weak var crabSegControl: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    var segmentName = "HappyCrab"
    var segmentIndex = 0
    
    func updateViews() {
    
        switch segmentIndex {
        case 0:
            segmentName = "HappyCrab"
        case 1:
            segmentName = "WaitingCrab"
        default:
            break
        }
        
        crabSegControl.selectedSegmentIndex = segmentIndex
    }
    // I'm not finding a good way to connect this with the Model and View using the singleton pattern as we are. 
}
