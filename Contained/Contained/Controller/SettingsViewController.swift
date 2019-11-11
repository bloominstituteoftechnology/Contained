//
//  SettingsViewController.swift
//  Contained
//
//  Created by Chad Rutherford on 11/11/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn ? true : false
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn ? true : false
    }
}
