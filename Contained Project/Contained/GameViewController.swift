//
//  GameViewController.swift
//  Contained
//
//  Created by Malik Barnes on 12/16/19.
//  Copyright © 2019 Malik Barnes. All rights reserved.
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
