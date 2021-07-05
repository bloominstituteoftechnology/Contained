//
//  SettingsViewController.swift
//  ContainedApp
//
//  Created by Austin Potts on 8/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
    
       Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleSwitch(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

}
