//
//  SettingsViewController.swift
//  Contained
//
//  Created by Cora Jacobson on 6/2/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var toggleRoll: UISwitch!
    @IBOutlet weak var toggleDance: UISwitch!
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
        if sender.isOn {
            toggleDance.setOn(false, animated: true)
            Settings.shared.shouldDance = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }

    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }
    
    @IBAction func toggleDance(_ sender: UISwitch) {
        Settings.shared.shouldDance = sender.isOn
        if sender.isOn {
            toggleRoll.setOn(false, animated: true)
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleTexture(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            Settings.shared.texture = "WaitingCrab"
        } else {
            Settings.shared.texture = "HappyCrab"
        }
    }
    
}
