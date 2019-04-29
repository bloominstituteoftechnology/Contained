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

		setupLabel()
    }
	
	func setupLabel () {
		label.text = "Crabs"
		label.textAlignment = .center
		label.font = UIFont.boldSystemFont(ofSize: 64)
		label.sizeToFit()
		label.center = view.center
		view.addSubview(label)
	}
	
	@IBAction func done(_ sender: Any) {
		navigationController?.popToRootViewController(animated: true)
	}
	
	let label = UILabel()

}
