//
//  GameViewController.swift
//  Contained
//
//  Created by Enayatullah Naseri on 5/22/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
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
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    

    
    
}


