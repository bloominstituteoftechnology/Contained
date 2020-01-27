//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_268 on 1/27/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
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
    

