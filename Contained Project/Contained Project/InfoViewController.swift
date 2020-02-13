//
//  InfoViewController.swift
//  Contained Project
//
//  Created by Juan M Mariscal on 2/11/20.
//  Copyright © 2020 Juan M Mariscal. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func doneTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
