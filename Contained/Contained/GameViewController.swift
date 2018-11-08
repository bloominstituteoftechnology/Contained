//
//  GameViewController.swift
//  Contained
//
//  Created by Austin Cole on 11/7/18.
//  Copyright © 2018 Austin Cole. All rights reserved.
//
import SpriteKit
import UIKit
import Foundation

class GamesViewController: UIViewController {

    

    @IBOutlet weak var skview: SKView!
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
