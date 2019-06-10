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
		Settings.shared.shouldRoll = !Settings.shared.shouldRoll
	}
	
	@IBAction func toggleZoom(_ sender: UISwitch) {
		Settings.shared.shouldZoom = !Settings.shared.shouldZoom
	}
	@IBAction func crabSegControl(_ sender: UISegmentedControl) {
		switch sender.selectedSegmentIndex {
		case 0:
			CustomScene.crabState = "HappyCrab"
		default:
			CustomScene.crabState = "WaitingCrab"
		}
	}
}
