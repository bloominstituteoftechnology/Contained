//
//  SettingsViewController.swift
//  CrabbedApp
//
//  Created by Clayton Watkins on 4/21/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
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
}
