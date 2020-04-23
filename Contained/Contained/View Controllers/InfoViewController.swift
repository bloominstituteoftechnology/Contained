//
//  InfoViewController.swift
//  Contained
//
//  Created by Rob Vance on 4/21/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
// Mark: IBAction
    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
