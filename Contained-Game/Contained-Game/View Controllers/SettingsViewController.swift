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

	var customeScene = CustomScene()
	@IBOutlet weak var imageView: UIImageView!

	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
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
			customeScene.crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
		case 1:
			imageView.image = UIImage(named: "waitingcrab000")
			customeScene.crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
		default:
			()
		}
	}

	@IBAction func alphaSliderInput(_ sender: UISlider) {
		imageView.alpha = CGFloat(sender.value)
		customeScene.crab.alpha = CGFloat(sender.value)
	}

}
