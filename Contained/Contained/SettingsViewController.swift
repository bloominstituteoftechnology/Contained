//
//  SettingsViewController.swift
//  Contained
//
//  Created by Josh Kocsis on 4/22/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
