//
//  SettingsViewController.swift
//  Contained-Game
//
//  Created by Marlon Raskin on 7/22/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit
import SpriteKit

class SettingsViewController: UIViewController {

	var customScene = CustomScene()
	@IBOutlet weak var imageView: UIImageView!
    
	@IBAction func toggleRoll(_ sender: UISwitch) {
		Settings.shared.shouldRoll = sender.isOn
	}

	@IBAction func toggleZoom(_ sender: UISwitch) {
		Settings.shared.shouldZoom = sender.isOn
	}

	@IBAction func segControlCrabState(_ sender: UISegmentedControl) {
		switch sender.selectedSegmentIndex {
		case 0:
			imageView.image = UIImage(named: "happycrab000")
			Settings.shared.crabIsHappy = true
		case 1:
			imageView.image = UIImage(named: "waitingcrab000")
			Settings.shared.crabIsHappy = false
		default:
			()
		}
	}

	@IBAction func alphaSliderInput(_ sender: UISlider) {
		imageView.alpha = CGFloat(sender.value)
		Settings.shared.alpha = sender.value
	}
}
