//
//  SettingsViewController.swift
//  Contained
//
//  Created by beth on 1/27/20.
//  Copyright © 2020 elizabeth wingate. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

       @IBAction func toggleRoll(_ sender: UISwitch) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        navigationController?.popToRootViewController(animated: true)
    }
}
