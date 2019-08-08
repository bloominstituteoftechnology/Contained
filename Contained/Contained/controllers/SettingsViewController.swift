//
//  SettingsViewController.swift
//  Contained
//
//  Created by John Kouris on 8/5/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }
    
    
    @IBAction func toggleSavePosition(_ sender: UISwitch) {
        Settings.shared.shouldStorePosition = sender.isOn
    }
    
    

}
