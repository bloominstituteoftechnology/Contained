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
		navigationController?.popToRootViewController(animated: true)
	}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
