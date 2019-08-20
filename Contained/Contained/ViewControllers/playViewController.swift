//
//  playViewController.swift
//  Contained
//
//  Created by Alex Rhodes on 8/14/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit
import SpriteKit

class playViewController: UIViewController {

        @IBOutlet weak var skview: SKView!
        
        var skscene: CustomScene? = nil
        
        override func viewDidLoad() {
            super.viewDidLoad()
            skscene = CustomScene(size: view.bounds.size)
            skview?.presentScene(skscene)
            
        
    }
}
