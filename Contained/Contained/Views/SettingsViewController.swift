//
//  SettingsViewController.swift
//  Contained
//
//  Created by Samuel Esserman on 2/24/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    let settings = Settings.shared
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
    }
}
