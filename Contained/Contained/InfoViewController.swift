//
//  InfoViewController.swift
//  Contained
//
//  Created by Angel Buenrostro on 1/9/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    
    @IBAction func done(_ sender: Any) {
          navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
