//
//  SettingsViewController.swift
//  movingCrabGame
//
//  Created by Hunter Oppel on 3/23/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }
    
    @IBAction func toggleHappy(_ sender: UISwitch) {
        Settings.shared.isHappy = sender.isOn
    }
    
}
