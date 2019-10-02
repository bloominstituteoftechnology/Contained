//
//  GameViewController.swift
//  Contained
//
//  Created by Craig Swanson on 10/1/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    @IBOutlet weak var skview: SKView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
