//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Jon Bash on 2019-10-14.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private(set) var roll: Bool = false
    private(set) var zoom: Bool = false
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        roll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        zoom = sender.isOn
    }
}
