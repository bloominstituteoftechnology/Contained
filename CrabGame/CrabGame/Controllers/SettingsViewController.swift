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
        Settings.shared.waitingCrab = true
    }
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = true
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = true
    }
    

}
