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
				setupLabel("Crabs")
			case 2:
				setupLabel("Tap to move \nthe crab")
				label.font = UIFont.boldSystemFont(ofSize: 24)
				label.numberOfLines = 2
				
			case 3:
				setupLabel("Lets Play")
				label.font = UIFont.boldSystemFont(ofSize: 24)
			default:
				print("no view")
			}

		}
	}
	
	func setupLabel(_ str: String) {
		label.text = str
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
