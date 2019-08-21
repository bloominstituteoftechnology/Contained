//
//  settingsViewController.swift
//  Contained
//
//  Created by Alex Rhodes on 8/14/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func rollSwitch(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func zoomSwitch(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
}
}
