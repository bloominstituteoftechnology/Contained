//
//  SettingsViewController.swift
//  Contained
//
//  Created by Stuart on 1/9/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            setting.shouldRoll = true
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            setting.shouldZoom = true
        }
    }
    
    let setting = Settings()
}
