//
//  SettingsViewController.swift
//  Contained
//
//  Created by Lisa Sampson on 4/29/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }

}
