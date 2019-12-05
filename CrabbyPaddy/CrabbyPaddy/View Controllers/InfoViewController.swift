//
//  InfoViewController.swift
//  CrabbyPaddy
//
//  Created by John Holowesko on 12/4/19.
//  Copyright © 2019 John Holowesko. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: IBActions
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}
