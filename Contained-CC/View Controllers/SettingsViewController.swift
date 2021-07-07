//
//  SettingsViewController.swift
//  Contained-CC
//
//  Created by Ciara Beitel on 8/19/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func toggleRoll(_ sender: UISwitch) {
       Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
       Settings.shared.shouldZoom = sender.isOn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
