//
//  SettingsViewController.swift
//  Contained
//
//  Created by Alex Shillingford on 6/10/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        sender.isOn = !sender.isOn
        print(sender.isOn)
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        sender.isOn = !sender.isOn
        print(sender.isOn)
    }
    

}
