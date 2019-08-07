//
//  GameViewController.swift
//  Contained
//
//  Created by Eoin Lavery on 07/08/2019.
//  Copyright © 2019 Eoin Lavery. All rights reserved.
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
