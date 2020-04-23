//
//  GameViewController.swift
//  Contained
//
//  Created by Rob Vance on 4/21/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

// Mark: IBOutlets
    @IBOutlet weak var skView: SKView!
    var skscene: CustomScene? = nil
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
