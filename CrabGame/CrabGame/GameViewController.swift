//
//  GameViewController.swift
//  CrabGame
//
//  Created by LaFleur on 12/5/19.
//  Copyright © 2019 David Schwinne. All rights reserved.
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
}
