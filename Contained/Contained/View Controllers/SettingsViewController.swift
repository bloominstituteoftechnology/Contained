//
//  SettingsViewController.swift
//  Contained
//
//  Created by Claudia Contreras on 2/12/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let settings = Settings.shared

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        settings.crabAttitude = sender.isOn
    }
    @IBAction func toggleFade(_ sender: UISwitch) {
        settings.shouldFade = sender.isOn
    }
}
