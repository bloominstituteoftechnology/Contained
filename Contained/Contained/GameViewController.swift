//
//  GameViewController.swift
//  Contained
//
//  Created by Sameera Leola on 11/7/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit
import SpriteKit

class GamesViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
