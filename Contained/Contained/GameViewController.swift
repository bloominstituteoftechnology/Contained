//
//  GameViewController.swift
//  Contained
//
//  Created by beth on 1/27/20.
//  Copyright © 2020 elizabeth wingate. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {

     @IBOutlet weak var skview: SKView!
    
    class GamesViewController: UIViewController {
        @IBOutlet weak var skview: SKView!
        
        var skscene: CustomScene? = nil
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            skscene = CustomScene(size: view.bounds.size)
            skview.presentScene(skscene)
        }
    }
}
