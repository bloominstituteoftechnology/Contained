//
//  SettingsViewController.swift
//  Contained
//
//  Created by Nathanael Youngren on 1/9/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            settings.shouldRoll = true
        } else {
            settings.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            settings.shouldZoom = true
        } else {
            settings.shouldZoom = false
        }
    }
    
    let settings = Settings()
}
