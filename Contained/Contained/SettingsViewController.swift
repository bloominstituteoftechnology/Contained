//
//  SettingsViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_64 on 5/6/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
    Settings.shared.shouldRoll = sender.isOn}
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
    Settings.shared.shouldZoom = sender.isOn}
    
}
