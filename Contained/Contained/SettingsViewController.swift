//
//  SettingsViewController.swift
//  Contained
//
//  Created by Austin Cole on 11/7/18.
//  Copyright © 2018 Austin Cole. All rights reserved.
//
import UIKit
import Foundation

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var toggleZoom: UISwitch!
    
    @IBOutlet weak var toggleRoll: UISwitch!
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn == true {
            Model.shared.shouldZoom = true
        }
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn == true {
            Model.shared.shouldRoll = true
        }
    }
    
    
    
}
