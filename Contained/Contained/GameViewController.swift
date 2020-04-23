//
//  GameViewController.swift
//  Contained
//
//  Created by Bronson Mullens on 4/22/20.
//  Copyright © 2020 Bronson Mullens. All rights reserved.
//

import SpriteKit
import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
}
