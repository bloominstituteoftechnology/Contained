//
//  SettingsViewController.swift
//  ContainedApp
//
//  Created by Vici Shaweddy on 8/6/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var switchRoll: UISwitch!
    @IBOutlet weak var switchZoom: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if switchZoom.isOn  {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if switchRoll.isOn {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }

    

}
