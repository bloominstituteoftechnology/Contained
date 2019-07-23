//
//  SettingsViewController.swift
//  Contained
//
//  Created by Percy Ngan on 7/22/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var zoomLabel: UILabel!
    @IBOutlet weak var happyCrabLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
        if sender.isOn {
            rollLabel.textColor = .red
        } else {
            rollLabel.textColor = .black
        }
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
        if sender.isOn {
            zoomLabel.textColor = .green
        } else {
            zoomLabel.textColor = .black
        }
    }
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        Settings.shared.shouldHappy = sender.isOn
        if sender.isOn {
            happyCrabLabel.textColor = .blue
        } else {
            happyCrabLabel.textColor = .black
        }
    }
        
    }
    
    
    
    

