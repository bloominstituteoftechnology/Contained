//
//  GameViewController.swift
//  Contained
//
//  Created by morse on 10/14/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    @IBOutlet weak var skView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
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
