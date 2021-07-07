//
//  GameViewController.swift
//  Contained
//
//  Created by Thomas Cacciatore on 5/6/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
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
    
    @IBOutlet weak var skview: SKView!

}
