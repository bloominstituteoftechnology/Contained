//
//  InfoViewController.swift
//  Contained
//
//  Created by James Sedlacek on 6/3/20.
//  Copyright © 2020 James Sedlacek. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
