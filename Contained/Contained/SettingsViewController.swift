//
//  SettingsViewController.swift
//  Contained
//
//  Created by Thomas Cacciatore on 5/6/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom.toggle()
    }
}
