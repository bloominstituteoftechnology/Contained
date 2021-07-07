//
//  InfoViewController.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    @IBAction func done(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
}
