//
//  InfoViewController.swift
//  CrabbedApp
//
//  Created by Clayton Watkins on 4/21/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
