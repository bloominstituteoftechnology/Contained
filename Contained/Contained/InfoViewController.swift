//
//  InfoViewController.swift
//  Contained
//
//  Created by Thomas Cacciatore on 4/29/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
