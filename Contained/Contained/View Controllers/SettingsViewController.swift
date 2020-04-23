//
//  SettingsViewController.swift
//  Contained
//
//  Created by Bohdan Tkachenko on 4/22/20.
//  Copyright © 2020 Bohdan Tkachenko. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
        Settings.shared.shouldRoll = true
        } else if sender.isEnabled {
            Settings.shared.shouldRoll = false
        }
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
        } else if sender.isEnabled {
            Settings.shared.shouldZoom = false
        }
    }
    @IBAction func toggleHappyCrab(_ sender: UISwitch) { //CHANGED to FADE
        
         if sender.isOn {
            Settings.shared.shouldFade = true
               } else if sender.isEnabled {
                   Settings.shared.shouldFade = false
               }
    }
}
