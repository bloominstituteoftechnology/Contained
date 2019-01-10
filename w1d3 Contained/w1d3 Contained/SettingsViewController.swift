//
//  SettingsViewController.swift
//  w1d3 Contained
//
//  Created by Michael Flowers on 1/9/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        
        Settings.shared.shouldRoll = sender.isOn
        print("toggledRoll")
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        Settings.shared.shouldZoom = sender.isOn
        print("toggledZoom")
    }

}
