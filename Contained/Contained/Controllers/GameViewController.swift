//
//  GameViewController.swift
//  Contained
//
//  Created by Joshua Rutkowski on 12/4/19.
//  Copyright © 2019 Joshua Rutkowski. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    // Connect Sprite Kit view to skView property
    
    @IBOutlet weak var skView: SKView!
    
    var skscene: CustomScene? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()    }
    
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         skscene = CustomScene(size: view.bounds.size)
         skView.presentScene(skscene)
     }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
