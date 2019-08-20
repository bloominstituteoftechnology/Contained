//
//  settingsViewController.swift
//  Contained
//
//  Created by Alex Rhodes on 8/14/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    var settings: Settings?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func rollSwitch(_ sender: UISwitch) {
        if sender.isOn {
            settings?.shouldRoll = true
        } else {
            settings?.shouldRoll = false
        }
    }
    
    @IBAction func zoomSwitch(_ sender: UISwitch) {
        if sender.isOn {
            settings?.shouldZoom = true
        } else {
            settings?.shouldZoom = false
        }
}
}
