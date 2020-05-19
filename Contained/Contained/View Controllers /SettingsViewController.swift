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
        sender.isOn == true ? Settings.shared.shouldRoll == false : Settings.shared.shouldRoll
//        Settings.shared.shouldRoll == true ? sender.isOn = false : sender.isOn = true
       
    }
    
    
    
    
    @IBAction func shouldZoom(_ sender: UISwitch) {
        sender.isOn = true ? Settings.shared.shouldZoom == true : Settings.shared.shouldRoll == false
    }
    
    

}

