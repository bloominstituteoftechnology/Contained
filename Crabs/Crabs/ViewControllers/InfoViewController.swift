//
//  InfoViewController.swift
//  Crabs
//
//  Created by Shawn James on 2/24/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func done(_ sender: UIStoryboardSegue) {
        tabBarController?.selectedIndex = 0
        navigationController?.popToRootViewController(animated: true)
    }
    
}
