//
//  CrabsViewController.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class CrabsViewController: UITabBarController {

	let settings = Settings()
	
    override func viewDidLoad() {
        super.viewDidLoad()

		guard let viewControllers = viewControllers else { return }
		for child in viewControllers {
			if let settingProt = child as? SettingsProtocol {
				settingProt.settings = settings
			}
		}
    }
}
