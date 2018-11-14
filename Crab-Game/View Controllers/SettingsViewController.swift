import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
    }
    
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
    
    @IBAction func CrabSegControlAction(_ sender: UISegmentedControl) {
        Model.shared.switchCrab()
    }
    
    @IBOutlet weak var crabSegControl: UISegmentedControl!
    
    func updateViews() {
        crabSegControl.selectedSegmentIndex = Model.shared.segmentIndex
    }
    // I'm not finding a good way to connect this with the Model and View using the singleton pattern as we are. 
}
