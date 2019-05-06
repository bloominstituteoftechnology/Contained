//
//  GameViewController.swift
//  Contained
//
//  Created by Kobe McKee on 5/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    @IBOutlet weak var skyview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skyview.presentScene(skscene)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    
    
}
