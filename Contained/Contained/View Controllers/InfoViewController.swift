//
//  InfoViewController.swift
//  Contained
//
//  Created by Alex Rhodes on 7/22/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBAction func unwindToInfoVC(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
