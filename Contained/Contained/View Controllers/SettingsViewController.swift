//
// CrabController.swift
// Contained
//
// Created by Joshua Kaunert on 11/08/18.
// Copyright © 2019 Joshua Kaunert. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        CrabController.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        CrabController.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func whichCrab(_ sender: UISwitch) {
        if sender.isOn {
            CrabController.shared.whichCrab = "HappyCrab"
        }else {
            CrabController.shared.whichCrab = "WaitingCrab"
        }
    }
}
