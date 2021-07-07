//
//  SettingsViewController.swift
//  Contained
//
//  Created by Brandi on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
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
        
