//
//  GameViewController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		skscene = CustomeScene(size: view.bounds.size)
		skview.presentScene(skscene)
		guard let sk = skscene else { return }
		sk.settingsController = settingsController
	}
	
	@IBOutlet weak var skview: SKView!
	var skscene: CustomeScene? = nil
	var settingsController: SettingsController?
}

extension GameViewController: SettingsControllerProtocol {
}
