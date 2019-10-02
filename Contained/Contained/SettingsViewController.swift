//
//  SettingsViewController.swift
//  Contained
//
//  Created by Craig Swanson on 10/1/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
}
