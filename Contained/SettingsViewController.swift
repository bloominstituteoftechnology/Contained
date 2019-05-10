//
//  SettingsViewController.swift
//  
//
//  Created by Nathan Hedgeman on 5/8/19.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //Toggles for the settings menu*******
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldRoll = true
            print("Is On")
        } else { Settings.shared.shouldRoll = false
            print("Is Off")
        }
        
        
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
            print("Is On")
        } else { Settings.shared.shouldZoom = false
            print("Is Off")
        }
    }
    //End of Toggles for the settings menu*******

}
