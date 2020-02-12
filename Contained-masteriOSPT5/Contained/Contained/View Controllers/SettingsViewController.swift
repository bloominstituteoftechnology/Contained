//
//  SettingsViewController.swift
//  Contained
//
//  Created by David Williams on 2/11/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var slowFastRollLabel: UILabel!
    @IBOutlet weak var fastRollSwitchLabel: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slowFastRollLabel.isHidden = true
        fastRollSwitchLabel.isHidden = true
    }
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
         Settings.shared.shouldRoll = !Settings.shared.shouldRoll
        if Settings.shared.shouldRoll && slowFastRollLabel.isHidden {
        slowFastRollLabel.isHidden = false
        fastRollSwitchLabel.isHidden = false
        } else {
            slowFastRollLabel.isHidden = true
            fastRollSwitchLabel.isHidden = true
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Settings.shared.shouldChangeCrab = !Settings.shared.shouldChangeCrab
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = !Settings.shared.shouldFade
    }
    
    @IBAction func rollSpeedPressed(_ sender: Any) {
        slowFastRollLabel.text = "Slow"
        Settings.shared.rollFast = !Settings.shared.rollFast
    }
}
