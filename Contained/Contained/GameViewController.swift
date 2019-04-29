//
//  GameViewController.swift
//  Contained
//
//  Created by Victor  on 4/29/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class GameViewController: UIViewController {
    //connecting variables
    @IBOutlet weak var skView: SKView!
    var skscene: CustomScene? = nil
    
    var settings: Settings? 
    
    //calls methods when view appears
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
}
