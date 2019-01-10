//
//  GameViewController.swift
//  Contained
//
//  Created by Angel Buenrostro on 1/9/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    

    @IBOutlet weak var SKView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        SKView.presentScene(skscene)
    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
