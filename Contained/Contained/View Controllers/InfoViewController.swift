//
//  InfoViewController.swift
//  Contained
//
//  Created by Dillon P on 8/7/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func doneTapped(_ sender: UIStoryboardSegue) {
        navigationController?.popToRootViewController(animated: true)
    }

}
