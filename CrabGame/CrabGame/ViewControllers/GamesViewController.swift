//
//  GamesViewController.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit
import SpriteKit

class GamesViewController: UIViewController {
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    //MARK: - View Lifecycle
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        skscene?.save()
    }
}
