//
//  SettingsViewController.swift
//  iOS5-VTD-Contained
//
//  Created by Vijay Das on 1/9/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    let settings = Settings()
    
    @IBAction func shouldRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func shouldZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    @IBAction func shouldFade(_ sender: UISwitch) {
        Settings.shared.fadeInAndOut = sender.isOn
    }
    
}

