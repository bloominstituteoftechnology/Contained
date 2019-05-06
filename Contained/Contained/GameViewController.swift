//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_64 on 5/6/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBOutlet weak var skview: SKView!
    
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
