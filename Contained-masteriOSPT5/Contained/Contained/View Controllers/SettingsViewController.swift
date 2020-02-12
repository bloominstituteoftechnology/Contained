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
    @IBOutlet weak var closeZoomLabel: UILabel!
    @IBOutlet weak var closeZoomSwitchLabel: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slowFastRollLabel.isHidden = true
        slowFastRollLabel.text = "Fast"
        fastRollSwitchLabel.isHidden = true
        closeZoomLabel.isHidden = true
        closeZoomLabel.text = "2X"
        closeZoomSwitchLabel.isHidden = true
    }
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !Settings.shared.shouldRoll
        if Settings.shared.shouldRoll && slowFastRollLabel.isHidden {
            slowFastRollLabel.isHidden = false
            slowFastRollLabel.text = "Fast"
            fastRollSwitchLabel.isHidden = false
        } else {
            fastRollSwitchLabel.isOn = false
            slowFastRollLabel.isHidden = true
            fastRollSwitchLabel.isHidden = true
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
        if Settings.shared.shouldZoom && closeZoomSwitchLabel.isHidden {
            closeZoomLabel.isHidden = false
            closeZoomLabel.text = "2X"
            closeZoomSwitchLabel.isHidden = false
        } else {
            closeZoomSwitchLabel.isOn = false
            closeZoomLabel.isHidden = true
            closeZoomSwitchLabel.isHidden = true
        }
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Settings.shared.shouldChangeCrab = !Settings.shared.shouldChangeCrab
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = !Settings.shared.shouldFade
    }
    
    @IBAction func rollSpeedPressed(_ sender: UISwitch) {
        if Settings.shared.rollFast {
        slowFastRollLabel.text = "Fast"
        } else {
            slowFastRollLabel.text = "Slow"
        }
        Settings.shared.rollFast = !Settings.shared.rollFast
    }
    @IBAction func toggleCloseZoomePressed(_ sender: UISwitch) {
        if Settings.shared.zoomClose {
            closeZoomLabel.text = "2X"
        } else {
            closeZoomLabel.text = "1X"
        }
        Settings.shared.zoomClose = !Settings.shared.zoomClose
    }
}
