//
//  SettingsViewController.swift
//  Contained
//
//  Created by Casualty on 8/7/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
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
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }
    
    @IBAction func toggleHappy(_ sender: UISwitch) {
        Settings.shared.crabHappy = sender.isOn
    }
    
    
    
}
