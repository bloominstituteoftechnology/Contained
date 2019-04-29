//
//  SettingsViewController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func RollSwitch(_ sender: UISwitch) {
		if let sc = settingsController {
			sc.setRoll()
		}
	}
	
	@IBAction func ZoomSwitch(_ sender: UISwitch) {
		if let sc = settingsController {
			sc.setZoom()
		}
	}
	
	var settingsController: SettingsController?
}

extension SettingsViewController: SettingsControllerProtocol {
}
