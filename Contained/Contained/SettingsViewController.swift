//
//  SettingsViewController.swift
//  Contained
//
//  Created by Alex Shillingford on 6/10/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !Settings.shared.shouldRoll
        print(Settings.shared.shouldRoll)
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
        print(Settings.shared.shouldZoom)
    }
    

}
