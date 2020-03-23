//
//  SettingsViewController.swift
//  Contained
//
//  Created by Harmony Radley on 3/23/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func toggleRoll(_ sender: UISwitch) {
        if (sender.isOn == true) {
                   Settings.shared.shouldRoll = true
               } else if sender.isOn == false {
                   Settings.shared.shouldRoll = false
               }
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if (sender.isOn == true) {
                   Settings.shared.shouldZoom = true
               } else if sender.isOn == false {
                   Settings.shared.shouldZoom = false
               }
    }
}
