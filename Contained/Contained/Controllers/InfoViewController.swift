//
//  InfoViewController.swift
//  Contained
//
//  Created by Donella Barcelo on 11/12/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
