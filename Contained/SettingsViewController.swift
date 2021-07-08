//
//  SettingsViewController.swift
//  Contained
//
//  Created by scott harris on 1/27/20.
//  Copyright © 2020 scott harris. All rights reserved.
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
