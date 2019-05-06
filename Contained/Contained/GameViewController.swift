//
//  GameViewController.swift
//  Contained
//
//  Created by Hayden Hastings on 5/6/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }

    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
}
