//
//  GameViewController.swift
//  CrabGame
//
//  Created by Karen Rodriguez on 2/22/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import UIKit
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
