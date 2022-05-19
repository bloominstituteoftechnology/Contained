//
//  GameViewController.swift
//  Contained
//
//  Created by Waseem Idelbi on 5/18/22.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
//MARK: - Properties
    var skscene: CustomScene? = nil

//MARK: - IBOutlets
    @IBOutlet weak var skView: SKView!
    
//MARK: - Methods
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skView.presentScene(skscene)
    }
    
}
