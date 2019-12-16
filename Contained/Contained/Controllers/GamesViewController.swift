//
//  GamesViewController.swift
//  Contained
//
//  Created by Tobi Kuyoro on 16/12/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
//

import SpriteKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
        
    }
}
