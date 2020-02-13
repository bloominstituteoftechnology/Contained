//
//  SettingsViewController.swift
//  ContainedProject
//
//  Created by Elizabeth Thomas on 2/11/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
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
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.fade = sender.isOn
    }
    
    @IBAction func toggleFastMode(_ sender: UISwitch) {
        Settings.shared.fastMode = sender.isOn
    }
    
    
}
