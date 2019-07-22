//
//  InfoViewController.swift
//  Contained
//
//  Created by Blake Andrew Price on 7/22/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func unwindDone(_ sender: UIStoryboardSegue) {
        navigationController?.popToRootViewController(animated: true)
    }
}
