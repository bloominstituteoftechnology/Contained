//
//  InfoViewController.swift
//  Crabs
//
//  Created by Joseph Rogers on 8/7/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
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
