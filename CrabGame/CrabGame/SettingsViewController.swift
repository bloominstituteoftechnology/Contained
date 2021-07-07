//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by LaFleur on 12/5/19.
//  Copyright © 2019 David Schwinne. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !Settings.shared.shouldRoll
    }
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
    }
    
}
