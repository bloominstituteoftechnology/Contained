//
//  SettingsViewController.swift
//  Contained
//
//  Created by Kelson Hartle on 4/20/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom.toggle()
    }
}
