//
//  GameViewController.swift
//  Contained
//
//  Created by Claudia Contreras on 2/12/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
