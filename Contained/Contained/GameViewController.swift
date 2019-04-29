//
//  GameViewController.swift
//  Contained
//
//  Created by Jeffrey Carpenter on 4/29/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
