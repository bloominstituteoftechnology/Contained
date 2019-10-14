//
//  GameViewController.swift
//  Crabs Game
//
//  Created by Niranjan Kumar on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import SpriteKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
        
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
