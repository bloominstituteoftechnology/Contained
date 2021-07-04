//
//  SettingsViewController.swift
//  Contained
//
//  Created by Vincent Hoang on 4/20/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var settings: Settings = Settings.shared
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        settings.toggleCrab = sender.isOn
    }
}
