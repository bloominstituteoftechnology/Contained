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
        
        // Set mood setting based on selectedSegmentIndex
        // 0 == happy, 1 == waiting
        switch sender.selectedSegmentIndex {
        case 0:
            Settings.shared.mood = .happy
        case 1:
            Settings.shared.mood = .waiting
        default:
            fatalError("Error setting mood. Default case executed.")
        }
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
}
