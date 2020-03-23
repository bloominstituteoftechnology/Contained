//
//  GameViewController.swift
//  SpriteKit
//
//  Created by Chris Dobek on 3/23/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
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

    }
    
}


