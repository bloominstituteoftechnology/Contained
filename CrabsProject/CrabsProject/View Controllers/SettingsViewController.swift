//
//  SettingsViewController.swift
//  CrabsProject
//
//  Created by Jarren Campos on 2/14/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
