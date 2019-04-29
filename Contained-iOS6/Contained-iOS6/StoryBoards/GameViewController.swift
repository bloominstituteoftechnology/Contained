//
//  GameViewController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit



class GameViewController: UIViewController, SettingsControllerProtocol{
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		print("set roll: \(settingsController?.seting.shouldRoll) set zoom:\(settingsController?.seting.shouldZoom)")
	}
	
	var settingsController: SettingsController?
}
