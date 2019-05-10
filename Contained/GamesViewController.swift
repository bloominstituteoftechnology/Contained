//
//  GamesViewController.swift
//  
//
//  Created by Nathan Hedgeman on 5/9/19.
//

import UIKit
import SpriteKit

class GamesViewController: UIViewController {
    //Sprite View
    @IBOutlet weak var skView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
}
