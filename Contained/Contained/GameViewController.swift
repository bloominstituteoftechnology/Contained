//
//  GameViewController.swift
//  Contained
//
//  Created by macbook on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import SpriteKit

// TODO - : (in the storyboard) ->  Add an Sprite Kit View to the Game view controller. Use the tie fighter button to stretch the view to each side without spaces.

class GameViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
