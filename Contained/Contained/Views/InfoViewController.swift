//
//  InfoViewController.swift
//  Contained
//
//  Created by Samuel Esserman on 2/24/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBAction func doneTapped(_ sender: Any) {
    
    navigationController?.popToRootViewController(animated: true)
    }

}
