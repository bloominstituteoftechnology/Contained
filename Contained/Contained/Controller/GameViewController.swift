//
//  GameViewController.swift
//  Contained
//
//  Created by Chad Rutherford on 11/11/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var skView: SKView!
    
    var skScene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skScene = CustomScene(size: view.bounds.size)
        skView.presentScene(skScene)
    }
}
