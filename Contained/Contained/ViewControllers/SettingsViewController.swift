//
//  SettingsViewController.swift
//  Contained
//
//  Created by Marlon Raskin on 6/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBOutlet var rollSwitch: UISwitch!
	@IBOutlet var zoomSwitch: UISwitch!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
    
	@IBAction func toggleRoll(_ sender: UISwitch) {
		if !rollSwitch.isOn {
			rollSwitch.isOn = true
			Settings.shared.shouldRoll = true
		} else if rollSwitch.isOn {
			rollSwitch.isOn = false
			Settings.shared.shouldRoll = false
		}
	}
	
	@IBAction func toggleZoom(_ sender: UISwitch) {
		if !zoomSwitch.isOn {
			zoomSwitch.isOn = true
			Settings.shared.shouldZoom = true
		} else if zoomSwitch.isOn {
			zoomSwitch.isOn = false
			Settings.shared.shouldZoom = false
		}
	}
}
