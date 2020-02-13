//
//  SettingsViewController.swift
//  Contained
//
//  Created by Rob Vance on 2/12/20.
//  Copyright © 2020 Rob Vance. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
     let settings = Settings.shared
// Mark: IBAction
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
    }
    
    

}
