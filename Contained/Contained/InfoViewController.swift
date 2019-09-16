//
//  InfoViewController.swift
//  Contained
//
//  Created by Gi Pyo Kim on 9/16/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
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
