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
	@IBOutlet var crabImage: UIImageView!
	@IBOutlet var fadeButton: UIButton!
	@IBOutlet var fadeSlider: UISlider!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		fadeButton.layer.borderWidth = 1
		fadeButton.layer.cornerRadius = 10
		fadeButton.layer.borderColor = #colorLiteral(red: 0.884738094, green: 1, blue: 0.4524771191, alpha: 1)
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
			crabImage.image = #imageLiteral(resourceName: "happycrab000.png")
		default:
			CustomScene.crabState = "WaitingCrab"
			crabImage.image = #imageLiteral(resourceName: "waitingcrab000.png")
		}
	}
	
	@IBAction func fadeSlider(_ sender: UISlider) {
		crabImage.alpha = CGFloat(sender.value)
		Settings.shared.crabFade = sender.value
		print(Settings.shared.crabFade)
	}
	@IBAction func fadeButtonTapped(_ sender: UIButton) {
		fadeSlider.value = 1.0
		crabImage.alpha = 1.0
		Settings.shared.crabFade = 1.0
	}
	
	
}
