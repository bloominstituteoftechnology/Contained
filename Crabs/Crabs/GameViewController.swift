//
//  GameViewController.swift
//  Crabs
//
//  Created by Enzo Jimenez-Soto on 4/20/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
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
