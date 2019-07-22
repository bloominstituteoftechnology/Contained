//
//  GameViewController.swift
//  Contained
//
//  Created by Alex Shillingford on 7/22/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    var skscene: CustomScene? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }

}

