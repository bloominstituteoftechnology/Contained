
//
//  GameViewController.swift
//  Contained
//
//  Created by Sameera Roussi on 4/29/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
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
    
    @IBAction func unwindToPlay(_ sender: UIStoryboardSegue) {
        print("UnwindtoPlay")
    }
}
