//
//  GameViewController.swift
//  movingCrabGame
//
//  Created by Hunter Oppel on 3/23/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var gameView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        gameView.presentScene(skscene)
    }
}
