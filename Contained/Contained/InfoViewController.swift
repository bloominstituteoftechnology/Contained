//
//  InfoViewController.swift
//  Contained
//
//  Created by Thomas Cacciatore on 5/6/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
