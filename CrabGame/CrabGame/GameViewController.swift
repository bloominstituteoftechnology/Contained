//
//  GameViewController.swift
//  CrabGame
//
//  Created by Thomas Sabino-Benowitz on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import SpriteKit



class GameViewController: UIViewController {
    
     var skscene: CustomScene? = nil
    @IBOutlet weak var skview: SKView!
    
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            skscene = CustomScene(size: view.bounds.size)
            skview.presentScene(skscene)
        }
    
    }
    


