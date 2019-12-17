//
//  SettingsViewController.swift
//  containedAfternoonProject
//
//  Created by Stephanie Ballard on 12/16/19.
//  Copyright © 2019 Stephanie Ballard. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func done(_ sender: Any) { navigationController?.popToRootViewController(animated: true)
        
    }
    

    @IBAction func toggleRoll(_ sender: UISwitch) {
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
    }
    
}
