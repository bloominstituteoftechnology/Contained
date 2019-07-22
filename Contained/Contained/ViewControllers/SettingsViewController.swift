//
//  SettingsViewController.swift
//  Contained
//
//  Created by Percy Ngan on 7/22/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }

}
