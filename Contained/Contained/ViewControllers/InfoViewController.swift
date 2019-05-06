//
//  InfoViewController.swift
//  Contained
//
//  Created by Kobe McKee on 5/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
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
