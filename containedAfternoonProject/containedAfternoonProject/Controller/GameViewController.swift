//
//  GameViewController.swift
//  containedAfternoonProject
//
//  Created by Stephanie Ballard on 12/16/19.
//  Copyright © 2019 Stephanie Ballard. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {

    @IBOutlet weak var skView: SKView!
                
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
// Do any additional setup after loading the view.




//clean code structure
//import
// enum
//struct
//classes
//outlets
//viewdid load
//helper functions
//actions
//extensions
