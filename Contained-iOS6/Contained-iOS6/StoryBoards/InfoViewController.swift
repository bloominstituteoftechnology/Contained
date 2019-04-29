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
		
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		if let viewControllerNumber = navigationController?.viewControllers.count {
			
			switch viewControllerNumber {
			case 1:
				setupLabel1()
			case 2:
				setupLabel1()
			case 3:
				setupLabel1()
			default:
				print("no view")
			}

		}
	}
	
	func setupLabel1 () {
		label.text = "Crabs"
		label.textAlignment = .center
		label.font = UIFont.boldSystemFont(ofSize: 48)
		label.sizeToFit()
		label.center = view.center
		view.addSubview(label)
	}
	
	@IBAction func done(_ sender: Any) {
		navigationController?.popToRootViewController(animated: true)
	}
	
	let label = UILabel()

}
