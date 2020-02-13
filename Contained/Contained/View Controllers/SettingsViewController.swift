//
//  SettingsViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/12/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: IBActions
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }
    
    @IBAction func toggleColorize(_ sender: UISwitch) {
        Settings.shared.shouldColorize = sender.isOn
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Settings.shared.happyCrab = sender.isOn
        if sender.isOn {
            crabLabel.text = "Waiting Crab"
        } else {
            crabLabel.text = "Happy Crab"
        }
    }
    
    @IBOutlet weak var crabLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
