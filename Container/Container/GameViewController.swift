//
//  GameViewController.swift
//  Container
//
//  Created by Bree Jeune on 2/13/20.
//  Copyright © 2020 Young. All rights reserved.
//

import SpriteKit
import UIKit



class GamesViewController: UIViewController {
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
        
    }
}
