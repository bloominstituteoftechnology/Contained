//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_Losaner_256 on 1/26/20.
//  Copyright © 2020 Benglobal Creative. All rights reserved.
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
}
