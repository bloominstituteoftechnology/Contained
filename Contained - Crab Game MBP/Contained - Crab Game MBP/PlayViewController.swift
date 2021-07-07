//
//  PlayViewController.swift
//  Contained - Crab Game MBP
//

import UIKit
import SpriteKit

class PlayViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    
    // Create an instance of skscene that is a part of the CustomScene class
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
}
