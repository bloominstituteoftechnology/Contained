//
//  InfoViewController.swift
//  Contained
//
//  Created by Jeremy Taylor on 12/4/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
