//
//  SettingsViewController.swift
//  Contained
//
//  Created by Percy Ngan on 8/19/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
	@IBAction func toggleRoll(_ sender: UISwitch) {
		sender.isOn = Settings.shared.shouldRoll
	}


	@IBAction func toggleZoom(_ sender: UISwitch) {
		sender.isOn = Settings.shared.shouldZoom
	}


    // MARK: - Navigation


}
