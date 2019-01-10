//
//  SettingsViewController.swift
//  Contained
//
//  Created by Luis Corvalan on 1/9/19.
//  Copyright © 2019 Luis Corvalan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
}
