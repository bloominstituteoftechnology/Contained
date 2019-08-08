//
//  GameViewController.swift
//  ContainedProject
//
//  Created by Lisa Fisher on 8/6/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import SpriteKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
