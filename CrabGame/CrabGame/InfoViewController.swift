//
//  InfoViewController.swift
//  CrabGame
//
//  Created by Jonathan Ferrer on 4/29/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
