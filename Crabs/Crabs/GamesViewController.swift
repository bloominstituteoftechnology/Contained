//
//  GamesViewController.swift
//  Crabs
//
//  Created by Keri Levesque on 1/27/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
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
