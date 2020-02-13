//
//  InfoViewController.swift
//  Contained
//
//  Created by Lambda_School_loaner_226 on 2/10/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
