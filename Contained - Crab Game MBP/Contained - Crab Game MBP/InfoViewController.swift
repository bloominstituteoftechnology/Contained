//
//  InfoViewController.swift
//  Contained - Crab Game MBP
//
//  Created by Audrey Seversen on 11/14/18.
//  Copyright © 2018 Audrey Welch. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBAction func done(_ sender: Any) {
        // Goes back to root view controller when "Done" is tapped
        navigationController?.popToRootViewController(animated: true)
    }
}
