//
//  SettingsViewController.swift
//  Contained
//
//  Created by Fabiola S on 8/6/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import UIKit
import SpriteKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var moodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func toggleMood(_ sender: UISwitch) {
        if sender.isOn {
            moodLabel.text = "Happy"
            Settings.shared.changeMood = true
            
        } else {
            moodLabel.text = "Waiting"
            Settings.shared.changeMood = false
        }
    }
    
    @IBAction func toggleFadeIn(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldFadeIn = true
        } else {
            Settings.shared.shouldFadeIn = false
        }
    }
    
    
}
