//
//  SettingsViewController.swift
//  Contained
//
//  Created by Nathanael Youngren on 1/9/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

let settings = Settings()

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
    }
    
}
