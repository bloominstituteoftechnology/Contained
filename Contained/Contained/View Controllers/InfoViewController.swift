//
//  InfoViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/24/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    // MARK: IBActions
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
