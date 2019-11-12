//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Zack Larsen on 11/11/19.
//  Copyright © 2019 Zack Larsen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBAction func toggleRoll(_sender: UISwitch) {
        Settings.shared.shouldRoll = _sender.isOn
    
    }
    @IBAction func toggleZoom(_sender: UISwitch) {
        Settings.shared.shouldZoom = _sender.isOn
    
    }
    
}
