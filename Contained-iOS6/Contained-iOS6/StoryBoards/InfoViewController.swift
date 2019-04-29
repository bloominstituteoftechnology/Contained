//
//  InfoViewController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
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
	
	let label = UILabel()

}
