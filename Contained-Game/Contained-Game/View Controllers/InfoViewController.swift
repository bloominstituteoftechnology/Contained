//
//  InfoViewController.swift
//  Contained-Game
//
//  Created by Marlon Raskin on 7/22/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()

    }


	@IBAction func done(_ sender: UIBarButtonItem) {
		self.tabBarController?.selectedIndex = 0
//		navigationController?.popToRootViewController(animated: true)
	}

}
