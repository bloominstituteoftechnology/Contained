//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Karen Rodriguez on 2/22/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleHappy(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
                Settings.shared.waitingCrab = true
        default:
                Settings.shared.waitingCrab = false
        }
    }
    @IBAction func toggleRoll(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
                Settings.shared.shouldRoll = true
        default:
                Settings.shared.shouldRoll = false
        }    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            Settings.shared.shouldZoom = true
        default:
                Settings.shared.shouldZoom = false
        }
    }
    

}
