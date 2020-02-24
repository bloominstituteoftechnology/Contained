//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        Settings.shared.crabIsHappy = sender.isOn
    }
    
    @IBAction func toggleMotionSickness(_ sender: UISwitch) {
        Settings.shared.motionSicknessEnabled = sender.isOn
    }
}
