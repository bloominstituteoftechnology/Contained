//
//  GamesViewController.swift
//  Contained
//
//  Created by Jordan Davis on 5/6/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
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
    
    
    //MARK: Properties
    
}
