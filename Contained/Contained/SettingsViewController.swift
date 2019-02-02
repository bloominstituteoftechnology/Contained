//
//  Settings'ViewController.swift
//  Contained
//
//  Created by Jeremy Taylor on 2/2/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

let settings = Settings()

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        settings.waitingCrab = sender.isOn
    }
    
}
