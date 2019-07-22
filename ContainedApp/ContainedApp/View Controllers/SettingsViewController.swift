//
//  SettingsViewController.swift
//  ContainedApp
//
//  Created by Nelson Gonzalez on 1/9/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            Model.shared.shouldRoll = true
        } else {
            Model.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Model.shared.shouldZoom = true
        } else {
            Model.shared.shouldZoom = true
        }
    }
    
    

}
