//
//  SettingsViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/12/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: IBActions
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
