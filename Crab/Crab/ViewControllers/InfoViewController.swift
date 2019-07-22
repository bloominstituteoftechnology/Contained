//
//  InfoViewController.swift
//  Crab
//
//  Created by Taylor Lyles on 7/22/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

	@IBAction func done(_ sender: Any) {
	navigationController?.popToRootViewController(animated: true)
	}
	

}
