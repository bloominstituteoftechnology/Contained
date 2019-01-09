//
//  SettingsViewController.swift
//  iOS5-VTD-Contained
//
//  Created by Vijay Das on 1/9/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let settings = Settings()
    
    @IBAction func shouldRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    
    @IBAction func shouldZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
    }
    
}
