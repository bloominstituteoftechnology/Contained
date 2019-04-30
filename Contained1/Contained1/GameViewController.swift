//
//  GameViewController.swift
//  Contained1
//
//  Created by Michael Flowers on 4/30/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var skscene: CustomScene? = nil
    @IBOutlet weak var skView: SKView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
}
