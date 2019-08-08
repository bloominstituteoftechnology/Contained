//
//  GameViewController.swift
//  Crabs
//
//  Created by Joseph Rogers on 8/7/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//
import UIKit
import SpriteKit
class GameViewController: UIViewController {


    @IBOutlet weak var skView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
}
