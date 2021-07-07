//
// CrabController.swift
// Contained
//
// Created by Joshua Kaunert on 11/08/18.
// Copyright © 2019 Joshua Kaunert. All rights reserved.
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
