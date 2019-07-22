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

    override func viewDidLoad() {
        super.viewDidLoad()
		skscene = CustomScene(size: view.bounds.size)
		skview.presentScene(skscene)
		skview.backgroundColor = SKColor.white
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}