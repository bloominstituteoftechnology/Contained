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
	
	
	@IBAction func happyCrabSwitch(_ sender: UISwitch) {
		if let sc = settingsController {
			sc.happyCrabtoggle()
		}
	}
	
	
	@IBAction func fadeToggle(_ sender: UISwitch) {
		if let sc = settingsController {
			sc.zoomToggle()
		}
	}
	
	@IBAction func rollSwitch(_ sender: UISwitch) {
		if let sc = settingsController {
			sc.rollToggle()
		}
	}
	
	@IBAction func zoomSwitch(_ sender: UISwitch) {
		if let sc = settingsController {
			sc.zoomToggle()
		}
	}
	
	var settingsController: SettingsController?
}

extension SettingsViewController: SettingsControllerProtocol {
}
