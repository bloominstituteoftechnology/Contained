//
//  GamesViewController.swift
//  Contained
//
//  Created by Andrew Ruiz on 8/19/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import Foundation
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
