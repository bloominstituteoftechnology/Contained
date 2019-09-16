//
//  SettingsViewController.swift
//  Contained
//
//  Created by Gi Pyo Kim on 9/16/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var happyCrab: UISwitch!
    @IBOutlet weak var waitingCrab: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
    
    @IBAction func toggleHappy(_ sender: UISwitch) {
        if sender.isOn {
            sender.setOn(false, animated: true)
            Settings.shared.useHappyCrab = false
            waitingCrab.setOn(true, animated: true)
        } else {
            sender.setOn(true, animated: true)
            Settings.shared.useHappyCrab = true
            waitingCrab.setOn(false, animated: true)
        }
    }
    
    @IBAction func toggleWaitting(_ sender: UISwitch) {
        if sender.isOn {
            sender.setOn(false, animated: true)
            Settings.shared.useHappyCrab = true
            happyCrab.setOn(true, animated: true)
        } else {
            sender.setOn(true, animated: true)
            Settings.shared.useHappyCrab = false
            happyCrab.setOn(false, animated: true)
        }
    }
}
