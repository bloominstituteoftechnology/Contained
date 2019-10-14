//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_204 on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // First time in the scene set the position to middle of screen
        if (skscene == nil) {
            Settings.shared.pointX = Double(view.bounds.midX)
            Settings.shared.pointY = Double(view.bounds.midY)
        }
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
