//
//  GameViewController.swift
//  Crabs
//
//  Created by Enzo Jimenez-Soto on 4/20/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import UIKit

import SpriteKit

class GamesViewController: UIViewController {
    @IBOutlet weak var skView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
}
