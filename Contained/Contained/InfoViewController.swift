//
//  InfoViewController.swift
//  Contained
//
//  Created by Enrique Gongora on 1/27/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
