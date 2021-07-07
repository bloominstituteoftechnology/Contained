//
//  SettingsViewController.swift
//  Contained
//
//  Created by Tobi Kuyoro on 16/12/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
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
