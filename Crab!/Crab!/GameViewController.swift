//
//  GameViewController.swift
//  Crab!
//
//  Created by Steven Leyva on 4/29/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit
import SpriteKit
class GameViewController: UIViewController {
   
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    @IBOutlet var skview: SKView!
}
