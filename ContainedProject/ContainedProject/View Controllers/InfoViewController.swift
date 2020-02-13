//
//  InfoViewController.swift
//  ContainedProject
//
//  Created by Elizabeth Thomas on 2/11/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
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
