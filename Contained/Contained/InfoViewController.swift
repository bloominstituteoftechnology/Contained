//
//  InfoViewController.swift
//  Contained
//
//  Created by admin on 7/22/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func doneButtonPopToRoot(_ sender: UIBarButtonItem) {
        navigationController?.popToRootViewController(animated: true)
    }
}
