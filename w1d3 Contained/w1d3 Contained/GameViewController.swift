//
//  GameViewController.swift
//  w1d3 Contained
//
//  Created by Michael Flowers on 1/9/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    @IBOutlet weak var mySkView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        mySkView.presentScene(skscene)
    }

}
