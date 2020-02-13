//
//  InfoViewController.swift
//  Contained
//
//  Created by J-Skenandore on 2/12/20.
//  Copyright © 2020 Jordan Skenandore. All rights reserved.
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
