//
//  SettingsViewController.swift
//  Contained
//
//  Created by Dillon P on 8/7/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldRoll = true
        } else if sender.isOn == false {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldZoom = true
        } else if sender.isOn == false {
            Settings.shared.shouldZoom = false
        }
    }
    
    @IBAction func toggleCrabTexture(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.crabTexture = true
        } else if sender.isOn == false {
            Settings.shared.crabTexture = false
        }
    }
    
    
}
