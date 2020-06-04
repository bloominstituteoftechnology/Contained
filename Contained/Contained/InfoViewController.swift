//
//  InfoViewController.swift
//  Contained
//
//  Created by Bronson Mullens on 4/22/20.
//  Copyright © 2020 Bronson Mullens. All rights reserved.
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
