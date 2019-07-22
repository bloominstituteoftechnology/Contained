//
//  GameViewController.swift
//  Contained-Game
//
//  Created by Marlon Raskin on 7/22/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {


	var skscene: CustomScene? = nil
	override var prefersStatusBarHidden: Bool {
		return true
	}

	@IBOutlet weak var skview: SKView!

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		skscene = CustomScene(size: view.bounds.size)
		skview.presentScene(skscene)
		skview.backgroundColor = SKColor.white
	}

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
