//
//  SettingsViewController.swift
//  Contained
//
//  Created by Fabiola S on 8/6/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
    

}
