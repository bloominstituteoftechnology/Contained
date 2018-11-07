//
//  SettingsViewController.swift
//  Contained
//
//  Created by Benjamin Hakes on 11/7/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit
import Foundation

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        let switchState = sender.isOn
        Model.shared.shouldRoll = switchState
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        let switchState = sender.isOn
        Model.shared.shouldZoom = switchState
    }
    
}
