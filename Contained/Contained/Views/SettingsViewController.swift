//
//  SettingsViewController.swift
//  Contained
//
//  Created by Joshua Sharp on 8/19/19.
//  Copyright © 2019 Joshua Sharp. All rights reserved.
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
