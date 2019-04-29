//
//  ViewController.swift
//  CrabbyControls
//
//  Created by Michael Redig on 4/29/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

	@IBOutlet var gifView: UIImageView?
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		if let gifView = gifView {
			if let imageData = try? Data(contentsOf: Bundle.main.url(forResource: "crab-dgac", withExtension: "gif")!) {
				let gifImage = UIImage.gif(data: imageData)
				gifView.image = gifImage
			}
		}
	}


	
	@IBAction func doneButtonPressed(_ sender: Any) {
		navigationController?.popToRootViewController(animated: true)
	}
}

