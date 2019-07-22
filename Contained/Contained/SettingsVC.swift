//
//  SettingsVC.swift
//  Contained
//
//  Created by Jeffrey Santana on 7/22/19.
//  Copyright © 2019 Jefffrey Santana. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
    }
	
	@IBAction func toggleRoll(_ sender: UISwitch) {
		Settings.shared.isRolling = sender.isOn
	}
	@IBAction func toggleZoom(_ sender: UISwitch) {
		Settings.shared.isZooming = sender.isOn
	}
	@IBAction func toggleFast(_ sender: UISwitch) {
		Settings.shared.nodeSpeed = sender.isOn ? 0.5 : 1.0
	}
	
}
