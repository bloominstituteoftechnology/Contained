//
//  SettingsViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/24/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var rollLabel: UILabel!
    @IBOutlet var zoomLabel: UILabel!
    @IBOutlet var speedLabel: UILabel!
    @IBOutlet var colorizeLabel: UILabel!
    @IBOutlet var crabTypeLabel: UILabel!
    
    // MARK: IBActions
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
        if sender.isOn {
            rollLabel.text = "Roll"
        } else {
            rollLabel.text = "No Roll"
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
        if sender.isOn {
            zoomLabel.text = "Zoom"
        } else {
            zoomLabel.text = "No Zoom"
        }
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        if sender.isOn {
            crabTypeLabel.text = "Waiting Crab"
            Settings.shared.crabType = "WaitingCrab"
        } else {
            crabTypeLabel.text = "Happy Crab"
            Settings.shared.crabType = "HappyCrab"
        }
    }
    
    @IBAction func toggleSpeed(_ sender: UISwitch) {
        Settings.shared.fastOrSlow = sender.isOn
        if sender.isOn {
            speedLabel.text = "Speed: Slow"
        } else {
            speedLabel.text = "Speed: Normal"
        }
        
    }
    @IBAction func toggleColorize(_ sender: UISwitch) {
        Settings.shared.shouldColorize = sender.isOn
        if sender.isOn {
            colorizeLabel.text = "Colorize: Blue"
        } else {
            colorizeLabel.text = "No Colorize"
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
