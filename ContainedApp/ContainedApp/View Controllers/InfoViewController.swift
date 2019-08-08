//
//  InfoViewController.swift
//  ContainedApp
//
//  Created by Vici Shaweddy on 8/6/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
