//
//  GameViewController.swift
//  ContainedProject
//
//  Created by Elizabeth Thomas on 2/11/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
        }
}
