//
//  SettingsViewController.swift
//  Contained
//
//  Created by Hayden Hastings on 5/6/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func toggleRollSwitchPressed(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoomSwitchPressed(_ sender:
        UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
}
