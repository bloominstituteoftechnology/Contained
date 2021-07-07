//
//  SettingsViewController.swift
//  Contained
//
//  Created by LambdaSchoolVM_Catalina on 12/4/19.
//  Copyright © 2019 Sal Amer. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// IB Actio
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn

    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
}
