//
//  SettingsViewController.swift
//  Crab Game
//
//  Created by Dustin Koch on 1/9/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let setting = Settings()

    @IBAction func toggleZoom(_ sender: UISwitch) {
        setting.shouldZoom = sender.isOn

    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        setting.shouldZoom = sender.isOn
    }
    
    
    



}
