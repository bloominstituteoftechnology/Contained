//
//  GameViewController.swift
//  Contained
//
//  Created by Vincent Hoang on 4/20/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    @IBOutlet weak var skview: SKView!
    
    var scene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scene = CustomScene(size: view.bounds.size)
        skview.presentScene(scene)
    }
    
}
