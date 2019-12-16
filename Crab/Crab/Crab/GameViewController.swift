//
//  GameViewController.swift
//  Crab
//
//  Created by Ufuk Türközü on 16.12.19.
//  Copyright © 2019 Ufuk Türközü. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {

     @IBOutlet weak var skview: SKView!
           
       var skscene: CustomScene? = nil
           
       override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           skscene = CustomScene(size: view.bounds.size)
           skview.presentScene(skscene)
           }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


