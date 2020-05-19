//
//  GameViewController.swift
//  Contained
//
//  Created by Richard Gibbs on 5/18/20.
//  Copyright © 2020 Rich Gibbs. All rights reserved.
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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
}

