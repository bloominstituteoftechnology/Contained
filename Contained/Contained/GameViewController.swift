//
//  GameViewController.swift
//  Contained
//
//  Created by Blake Andrew Price on 7/22/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview?.presentScene(skscene)
    }
}
