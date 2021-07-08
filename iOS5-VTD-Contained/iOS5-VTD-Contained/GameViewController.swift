//
//  GameViewController.swift
//  iOS5-VTD-Contained
//
//  Created by Vijay Das on 1/9/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
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
