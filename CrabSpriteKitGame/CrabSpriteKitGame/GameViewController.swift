//
//  GameViewController.swift
//  CrabSpriteKitGame
//
//  Created by Nichole Davidson on 1/27/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
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
    
    @IBAction func unwindToInfo(_ send: UIStoryboardSegue) {
           
       }
}


