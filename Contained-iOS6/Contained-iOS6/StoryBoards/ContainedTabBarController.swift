//
//  ContainedTabBarController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class ContainedTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
		for childVC in children {
			if let vc = childVC as? SettingsControllerProtocol {
				vc.settingsController = settingsController
			}
		}

    }
	let settingsController = SettingsController()
}
