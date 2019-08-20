//
//  GameViewController.swift
//  Crab Game
//
//  Created by Uptiie on 7/22/19.
//  Copyright © 2019 Walcenberg, Inc. All rights reserved.
//

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

