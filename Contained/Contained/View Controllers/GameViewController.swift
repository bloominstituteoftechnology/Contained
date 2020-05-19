//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/12/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    @IBOutlet weak var skView: SKView!
    
    var skScene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skScene = CustomScene(size: view.bounds.size)
        skView.presentScene(skScene)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
