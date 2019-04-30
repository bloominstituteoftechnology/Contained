//
//  GameViewController.swift
//  Contained1
//
//  Created by Michael Flowers on 4/30/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var skscene: CustomScene? = nil
    @IBOutlet weak var myskView: SKView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
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
