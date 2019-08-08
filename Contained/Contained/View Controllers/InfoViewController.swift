//
//  InfoViewController.swift
//  Contained
//
//  Created by Casualty on 8/7/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    

    @IBOutlet weak var crabesLabel: UILabel!
    
    @IBOutlet weak var moveLabel: UILabel!
    
    @IBOutlet weak var letsPlayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moveLabel?.text = "Tap to move\r the crab"
        letsPlayLabel?.text = "Let's Play!"
    }
    
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

}
