//
//  SettingsViewController.swift
//  Contained
//
//  Created by Waseem Idelbi on 5/18/22.
//

import UIKit

class SettingsViewController: UIViewController {

//MARK: - IBActions
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        Settings.shared.happyCrab = sender.isOn
    }
    
}
