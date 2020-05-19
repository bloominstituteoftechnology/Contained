//
//  SettingsViewController.swift
//  Contained
//
//  Created by Bryan Cress on 5/18/20.
//  Copyright © 2020 Bryan Cress. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        // toggle switch from isOn to isOff
        Settings.shared.shouldRoll = sender.isOn
    }
//        if sender.isOn  == true {
//            Settings.shared.shouldRoll = true
//        } else {
//            Settings.shared.shouldRoll = false
//        }
//    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
}
        //        if sender.isOn == true {
//            Settings.shared.shouldZoom = true
//        } else {
//            Settings.shared.shouldZoom = false
//        }
//    }
//}
    
    @IBAction func crabToggle(_ sender: UISwitch) {
        Settings.shared.happyCrab = sender.isOn
        if sender.isOn {
            crabLabel.text = "Waiting Crab"
        } else {
            crabLabel.text = "Happy Crab"
        }
    }
    
    
    @IBOutlet weak var crabLabel: UILabel!
    
}


