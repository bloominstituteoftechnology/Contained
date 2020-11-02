//
//  GameViewController.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {

    @IBOutlet weak var skView: SKView!
    var skscene: CustomScene? = nil
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           skscene = CustomScene(size: view.bounds.size)
           skView.presentScene(skscene)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

  

}
