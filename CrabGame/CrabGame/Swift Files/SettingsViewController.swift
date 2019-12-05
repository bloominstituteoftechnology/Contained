//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by David Williams on 12/4/19.
//  Copyright © 2019 david williams. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = true
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = true
    }
    
}
