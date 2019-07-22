//
//  InfoViewController.swift
//  Contained
//
//  Created by brian vilchez on 7/22/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
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
