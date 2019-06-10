//
//  GameViewController.swift
//  Crab Game
//
//  Created by Kat Milton on 6/10/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    // MARK: - Properties and Outlets
    
    @IBOutlet var skview: SKView!
    
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
    



