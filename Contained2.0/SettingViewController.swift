//
//  SettingViewController.swift
//  Contained2.0
//
//  Created by Osha Washington on 12/5/19.
//  Copyright © 2019 Osha Washington. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
    
        Settings.shared.shouldZoom = sender.isOn
        }
    
}
