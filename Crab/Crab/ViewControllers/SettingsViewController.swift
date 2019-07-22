//
//  SettingsViewController.swift
//  Crab
//
//  Created by Taylor Lyles on 7/22/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBAction func toggleRoll(_ sender: UISwitch) {
		if sender.isOn {
			Settings.shared.shouldRoll = true
		}
	}
	
	@IBAction func toggleZoom(_ sender: UISwitch) {
		Settings.shared.shouldZoom = true
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()

		
    }
    


}
