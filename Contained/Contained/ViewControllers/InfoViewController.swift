//
//  InfoViewController.swift
//  Contained
//
//  Created by Marlon Raskin on 6/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

	@IBAction func done(_ sender: UIStoryboardSegue) {
		navigationController?.popToRootViewController(animated: true)
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
