//
//  SettingsViewController.swift
//  Contained
//
//  Created by Sameera Leola on 11/14/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRool(_ sender: UISwitch) {
        Model.shared.shouldRoll = sender.isOn ? true : false
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom = sender.isOn ? true : false
    }
    
}
