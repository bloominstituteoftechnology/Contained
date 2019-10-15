//
//  InfoViewController.swift
//  Contained
//
//  Created by Rick Wolter on 10/14/19.
//  Copyright © 2019 Richar Wolter. All rights reserved.
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
