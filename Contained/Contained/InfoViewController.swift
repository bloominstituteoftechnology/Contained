//
//  InfoViewController.swift
//  Contained
//
//  Created by Hayden Hastings on 5/6/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doneButtonPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
