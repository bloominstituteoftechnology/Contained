//
//  GameViewController.swift
//  Crabs
//
//  Created by Zack Larsen on 11/11/19.
//  Copyright © 2019 Zack Larsen. All rights reserved.
//

import UIKit
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
