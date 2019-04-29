//
//  SettingsViewController.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
	@IBOutlet var rollSwitch: UISwitch!
	@IBOutlet var zoomSwitch: UISwitch!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		rollSwitch.isOn = Settings.shouldRoll
		zoomSwitch.isOn = Settings.shouldZoom

        // Do any additional setup after loading the view.
    }

	@IBAction func rollSwitchPressed(_ sender: UISwitch) {
		Settings.shouldRoll = sender.isOn
	}
	
	@IBAction func zoomSwitchPressed(_ sender: UISwitch) {
		Settings.shouldZoom = sender.isOn
	}
	
}
