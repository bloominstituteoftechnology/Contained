//
//  GamesViewController.swift
//  Crabs
//
//  Created by William Chen on 8/19/19.
//  Copyright © 2019 William Chen. All rights reserved.
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
