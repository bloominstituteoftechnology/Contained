//
//  SettingsViewController.swift
//  Contained
//
//  Created by brian vilchez on 7/22/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func toggleRoll(_ sender: UISwitch) {
            let settings = Settings.shared.shouldRoll = sender.isOn
        
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
       let settings = Settings.shared.shouldZoom = sender.isOn
    }
}
