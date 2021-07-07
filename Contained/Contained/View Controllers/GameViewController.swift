//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/24/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
