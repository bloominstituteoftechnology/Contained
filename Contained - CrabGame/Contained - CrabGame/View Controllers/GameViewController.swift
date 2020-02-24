//
//  GameViewController.swift
//  Contained - CrabGame
//
//  Created by Nichole Davidson on 2/24/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    
    @IBOutlet weak var gameSkyView: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           skscene = CustomScene(size: view.bounds.size)
           gameSkyView.presentScene(skscene)
       }
    
    @IBAction func done(_ sender: UIStoryboardSegue) {
         navigationController?.popToRootViewController(animated: true)
     }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
