//
//  InfoViewController.swift
//  w1d3 Contained
//
//  Created by Michael Flowers on 1/9/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func done(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
  

}
