//
//  GameViewController.swift
//  
//
//  Created by Nonye on 4/20/20.
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

