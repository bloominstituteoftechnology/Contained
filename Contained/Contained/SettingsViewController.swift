//
//  SettingsViewController.swift
//  Contained
//
//  Created by Enrique Gongora on 1/27/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var toggleRoll: UISwitch!
    @IBOutlet weak var toggleZoom: UISwitch!
    @IBOutlet weak var toggleCrab: UISwitch!
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        if sender.isOn{
            Settings.shared.changedCrabs = "WaitingCrab"
        }else{
            Settings.shared.changedCrabs = "HappyCrab"
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
