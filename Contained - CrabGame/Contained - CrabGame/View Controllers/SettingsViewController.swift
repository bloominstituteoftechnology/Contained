//
//  SettingsViewController.swift
//  Contained - CrabGame
//
//  Created by Nichole Davidson on 2/24/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var settings: Settings!
    
    @IBOutlet weak var toggleRollSwitch: UISwitch!
    @IBOutlet weak var toggleZoomSwitch: UISwitch!
    @IBAction func toggleRoll(_ sender: UISwitch) {
        toggleRollSwitch.isOn = sender.isOn
        if toggleRollSwitch.isOn {
            Settings.shared.shouldRoll = true
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        toggleZoomSwitch.isOn = sender.isOn
        if toggleZoomSwitch.isOn {
            Settings.shared.shouldZoom = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
