//
//  SettingsViewController.swift
//  Contained
//
//  Created by Dennis on 9/16/19.
//  Copyright © 2019 LambdaSchool. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldroll = sender.isOn
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    


}
