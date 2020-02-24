//
//  SettingsViewController.swift
//  Contained
//
//  Created by Harmony Radley on 2/24/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {

    @IBOutlet weak var rollOutput: UILabel!

    @IBAction func toggleRoll(_ sender: UISwitch) {
        if (sender.isOn == true) {
            rollOutput.text = "Roll is on"
        } else {
            rollOutput.text = " Roll is off"
        }
    }
    
    
    
    @IBOutlet weak var zoomOutput: UILabel!
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if (sender.isOn == true) {
            zoomOutput.text = "Zoom is on"
        } else {
            zoomOutput.text = "Zoom is off"
        }
        
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
    }
    
}
