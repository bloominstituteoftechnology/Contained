//
//  InfoViewController.swift
//  Contained
//
//  Created by John Kouris on 8/5/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func done(_ sender: UIStoryboardSegue) {
        navigationController?.popToRootViewController(animated: true)
    }

}
