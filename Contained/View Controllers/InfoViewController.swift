//
//  InfoViewController.swift
//  Contained
//
//  Created by Rob Vance on 2/12/20.
//  Copyright © 2020 Rob Vance. All rights reserved.
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
