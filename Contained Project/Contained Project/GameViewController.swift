//
//  GameViewController.swift
//  Contained Project
//
//  Created by Ivan Caldwell on 11/7/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
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
    }
}
