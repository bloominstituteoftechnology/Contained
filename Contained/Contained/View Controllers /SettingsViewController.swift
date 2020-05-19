//
//  SettingsViewController.swift
//  Contained
//
//  Created by Richard Gibbs on 5/18/20.
//  Copyright © 2020 Rich Gibbs. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func shouldRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    
    
    
    @IBAction func shouldZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn ? true : false 
    }
    
    

}

