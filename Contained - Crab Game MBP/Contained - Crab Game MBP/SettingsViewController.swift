//
//  SettingsViewController.swift
//  Contained - Crab Game MBP
//


import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
       
        // When toggle is on, initiate the shouldRoll property in the model
        Model.shared.shouldRoll = sender.isOn
        
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        // When toggle is on, initiate the shouldZoom property in the model
        Model.shared.shouldZoom = sender.isOn
    }
    
}
