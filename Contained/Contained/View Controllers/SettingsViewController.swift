//
//  SettingsViewController.swift
//  Contained
//
//  Created by Harmony Radley on 2/24/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    

    // Roll

    @IBOutlet weak var rollOutput: UILabel!

    @IBAction func toggleRoll(_ sender: UISwitch) {
        if (sender.isOn == true) {
            Settings.shared.shouldRoll = true
        } else if sender.isOn == false {
            Settings.shared.shouldRoll = false
        }
    }
    
    
    // Zoom
    
    @IBOutlet weak var zoomOutput: UILabel!
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if (sender.isOn == true) {
            Settings.shared.shouldZoom = true
        } else if sender.isOn == false {
            Settings.shared.shouldZoom = false
        }
        
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
    }
    
}

