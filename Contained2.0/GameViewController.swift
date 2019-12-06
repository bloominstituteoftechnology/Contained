//
//  GameViewController.swift
//  Contained2.0
//
//  Created by Osha Washington on 12/5/19.
//  Copyright © 2019 Osha Washington. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {
   
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
    

