//
//  GameViewController.swift
//  Crabs
//
//  Created by Eugene White on 6/3/20.
//  Copyright © 2020 Eugene White. All rights reserved.
//
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
