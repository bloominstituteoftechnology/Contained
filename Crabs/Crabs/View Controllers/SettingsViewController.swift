//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Jonalynn Masters on 9/16/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBAction func roll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func zoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  

}
