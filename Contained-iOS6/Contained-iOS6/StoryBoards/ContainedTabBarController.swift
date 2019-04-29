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
			print("found one!")
		}

    }
	let setingsController = SettingsController()
}
