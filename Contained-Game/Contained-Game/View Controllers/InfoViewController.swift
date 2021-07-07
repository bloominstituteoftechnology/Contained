//
//  InfoViewController.swift
//  Contained-Game
//
//  Created by Marlon Raskin on 7/22/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

	@IBAction func done(_ sender: UIBarButtonItem) {
		self.navigationController?.popToRootViewController(animated: true)
	}
}
