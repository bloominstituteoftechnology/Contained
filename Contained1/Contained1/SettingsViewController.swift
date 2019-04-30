//
//  SettingsViewController.swift
//  Contained1
//
//  Created by Michael Flowers on 4/30/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn // if sender is off then shouldRoll boolean value should be false.
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn //if sender is on then that true value will be assigned to shouldZoom's boolean value.
    }
}
