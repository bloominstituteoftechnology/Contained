//
//  GameViewController.swift
//  Contained
//
//  Created by Lambda_School_Losaner_256 on 1/26/20.
//  Copyright © 2020 Benglobal Creative. All rights reserved.
//
import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil

    override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    skscene = CustomScene(size: view.bounds.size)
    skview.presentScene(skscene)
    
        func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
}
