//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by David Williams on 12/4/19.
//  Copyright © 2019 david williams. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !Settings.shared.shouldRoll
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
    }
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Settings.shared.shouldChangeCrab = !Settings.shared.shouldChangeCrab
    }
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = !Settings.shared.shouldFade
    }
}
