//
//  GameViewController.swift
//  Contained
//
//  Created by Joshua Sharp on 8/19/19.
//  Copyright © 2019 Joshua Sharp. All rights reserved.
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

}