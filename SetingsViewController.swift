//
//  SetingsViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_268 on 1/27/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
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
