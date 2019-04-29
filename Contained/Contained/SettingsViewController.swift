//
//  SettingsViewController.swift
//  Contained
//
//  Created by Jeffrey Carpenter on 4/29/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleMood(_ sender: UISegmentedControl) {
        
        if Settings.shared.mood == .happy {
            Settings.shared.mood = .waiting
        } else {
            Settings.shared.mood = .happy
        }
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !Settings.shared.shouldRoll
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
    }
}
