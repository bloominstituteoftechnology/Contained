//
//  SettingsViewController.swift
//  Contained
//
//  Created by Luis Corvalan on 1/9/19.
//  Copyright © 2019 Luis Corvalan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        onOrOff(sender)
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        onOrOff(sender)
    }
    
    func onOrOff(_ sender: UISwitch) {
        
        if sender.isOn {
            sender.isOn = false
        } else {
            sender.isOn = true
        }
        
    }
    
    
    
}
