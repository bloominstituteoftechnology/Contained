//
//  LastViewController.swift
//  ContainedApp
//
//  Created by Nelson Gonzalez on 1/9/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func done(_ sender: UIBarButtonItem) {
 navigationController?.popToRootViewController(animated: true)
        
    }
    
}
