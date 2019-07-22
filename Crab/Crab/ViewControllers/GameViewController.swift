//
//  GameViewController.swift
//  Crab
//
//  Created by Taylor Lyles on 7/22/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
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
	
    override func viewDidLoad() {
        super.viewDidLoad()

		
    }
    

	
}
