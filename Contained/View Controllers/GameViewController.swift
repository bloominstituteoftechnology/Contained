//
//  GameViewController.swift
//  Contained
//
//  Created by Percy Ngan on 8/19/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

	@IBOutlet weak var skview: SKView!

	var skscene: CustomScene? = nil

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		skscene = CustomScene(size: view.bounds.size)
		skview.presentScene(skscene)
	}

//	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//		if let touch = touches.first {
//			let position = touch.location(in: view)
//			print(position)
//		}
//	}


}





