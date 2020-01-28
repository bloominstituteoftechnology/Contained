//
//  GamesViewController.swift
//  Contained
//
//  Created by Enrique Gongora on 1/27/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import UIKit
import SpriteKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
