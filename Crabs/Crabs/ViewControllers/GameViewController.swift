//
//  GameViewController.swift
//  Crabs
//
//  Created by Shawn James on 2/24/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
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
