//
//  PlayVC.swift
//  Contained
//
//  Created by Jeffrey Santana on 7/22/19.
//  Copyright © 2019 Jefffrey Santana. All rights reserved.
//

import UIKit
import SpriteKit

class PlayVC: UIViewController {

	@IBOutlet weak var skView: SKView!
	
	var skScene: CustomScene? = nil
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		skScene = CustomScene(size: view.bounds.size)
		skView.presentScene(skScene)
		
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}

}
