//
//  SettingsVC.swift
//  Contained
//
//  Created by Jeffrey Santana on 7/22/19.
//  Copyright © 2019 Jefffrey Santana. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
	
	@IBOutlet weak var happyBtn: UIButton!
	@IBOutlet weak var waitingBtn: UIButton!
	
	var isHappy = true
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		happyBtn.backgroundColor = .orange
    }
	
	@IBAction func happyCrabAction(_ sender: Any) {
		isHappy = true
		Settings.shared.crabImage = "HappyCrab"
		toggleBtnBackground()
	}
	@IBAction func waitingCrabAction(_ sender: Any) {
		isHappy = false
		Settings.shared.crabImage = "WaitingCrab"
		toggleBtnBackground()
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
	
	private func toggleBtnBackground() {
		if isHappy {
			happyBtn.backgroundColor = .orange
			waitingBtn.backgroundColor = .white
		} else {
			happyBtn.backgroundColor = .white
			waitingBtn.backgroundColor = .orange
		}
	}
	
}
