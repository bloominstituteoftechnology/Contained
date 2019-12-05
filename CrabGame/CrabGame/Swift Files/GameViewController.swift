//
//  GameViewController.swift
//  CrabGame
//
//  Created by David Williams on 12/4/19.
//  Copyright © 2019 david williams. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
  
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)    }
}
