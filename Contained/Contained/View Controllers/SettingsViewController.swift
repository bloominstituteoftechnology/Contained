//
//  SettingsViewController.swift
//  Contained
//
//  Created by Eoin Lavery on 07/08/2019.
//  Copyright © 2019 Eoin Lavery. All rights reserved.
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
