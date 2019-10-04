//
//  GameViewController.swift
//  Contained Project
//
//  Created by Lambda_School_Loaner_201 on 10/2/19.
//  Copyright © 2019 Christian Lorenzo. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    
    
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}
