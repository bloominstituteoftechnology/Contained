//
//  SettingsViewController.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, SettingsProtocol {
	
	var settings: Settings?
	
	@IBOutlet var rollSwitch: UISwitch!
	@IBOutlet var zoomSwitch: UISwitch!
	@IBOutlet var heartAttackSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
		
		rollSwitch.isOn = settings?.shouldRoll ?? false
		zoomSwitch.isOn = settings?.shouldZoom ?? false
		heartAttackSwitch.isOn = settings?.heartAttackMode ?? false

        // Do any additional setup after loading the view.
    }

	@IBAction func rollSwitchPressed(_ sender: UISwitch) {
		settings?.shouldRoll = sender.isOn
	}
	
	@IBAction func zoomSwitchPressed(_ sender: UISwitch) {
		settings?.shouldZoom = sender.isOn
	}
	
	@IBAction func heartAttackSwitchPressed(_ sender: UISwitch) {
		settings?.heartAttackMode = sender.isOn
	}
	
	
	
}
