//
//  GameViewController.swift
//  Contained-game
//
//  Created by Mike Nichols on 5/18/20.
//  Copyright © 2020 Mike Nichols. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var mySKView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        mySKView.presentScene(skscene)
    }
}
