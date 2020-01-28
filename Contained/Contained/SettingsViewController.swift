//
//  SettingsViewController.swift
//  Contained
//
//  Created by Enrique Gongora on 1/27/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var toggleRoll: UISwitch!
    @IBOutlet weak var toggleZoom: UISwitch!
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
