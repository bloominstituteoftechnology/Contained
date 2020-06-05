//
//  GameViewController.swift
//  Contained
//
//  Created by Kenneth Jones on 4/22/20.
//  Copyright © 2020 Kenneth Jones. All rights reserved.
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            Settings.shared.position = touch.location(in: view)
        }
    }

}
