//
//  SettingsViewController.swift
//  Contained
//
//  Created by Jessie Ann Griffin on 8/6/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var rollSwitch: UISwitch!
    @IBOutlet weak var zoomSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = rollSwitch.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = zoomSwitch.isOn
    }
}
