//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_loaner_226 on 12/16/19.
//  Copyright © 2019 JamesMcDougall. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController
{

    @IBOutlet weak var skView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}
