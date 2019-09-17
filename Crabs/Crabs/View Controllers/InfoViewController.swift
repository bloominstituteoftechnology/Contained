//
//  InfoViewController.swift
//  Crabs
//
//  Created by Jonalynn Masters on 9/16/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func  viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
