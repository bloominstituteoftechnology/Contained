//
//  SettingsViewController.swift
//  Contained
//
//  Created by Alex Shillingford on 7/22/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var rollSwitch: UISwitch!
    @IBOutlet weak var zoomSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rollSwitch.isOn = false
        zoomSwitch.isOn = false
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
//        print(sender.isOn)
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
//        print(sender.isOn)
    }
    
}
