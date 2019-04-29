//
//  GameViewController.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

	@IBOutlet var gameView: SKView!
	
	var skscene: CustomScene? = nil
	
	override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		skscene = CustomScene(size: view.bounds.size)
		gameView.presentScene(skscene)
	}
}
