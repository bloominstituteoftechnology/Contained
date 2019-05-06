//
//  GameViewController.swift
//  Contained-1
//
//  Created by Taylor Lyles on 4/29/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBOutlet weak var skView: SKView!
    
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    



}

}
