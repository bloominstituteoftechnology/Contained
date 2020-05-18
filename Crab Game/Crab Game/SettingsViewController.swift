//
//  SettingsViewController.swift
//  Crab Game
//
//  Created by Ian Becker on 5/18/20.
//  Copyright © 2020 Ian Becker. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        // If switch is on then roll
        if sender.isOn == true {
        // We want the crab to roll
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
}
