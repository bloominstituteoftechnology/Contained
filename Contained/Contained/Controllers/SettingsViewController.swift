//
//  SettingsViewController.swift
//  Contained
//
//  Created by Sameera Roussi on 4/29/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn ? true : false
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn ? true : false
    }
    
}
