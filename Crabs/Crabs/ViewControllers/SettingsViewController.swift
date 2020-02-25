//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Shawn James on 2/24/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        Settings.shared.happyCrab = sender.isOn
    }
    
}
