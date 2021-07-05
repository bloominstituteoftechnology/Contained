//
//  InfoViewController.swift
//  Contained
//
//  Created by Andrew Ruiz on 8/19/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
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
