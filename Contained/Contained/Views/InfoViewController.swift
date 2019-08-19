//
//  InfoViewController.swift
//  Contained
//
//  Created by Joshua Sharp on 8/19/19.
//  Copyright © 2019 Joshua Sharp. All rights reserved.
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
