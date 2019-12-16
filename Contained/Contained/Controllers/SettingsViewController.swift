//
//  SettingsViewController.swift
//  Contained
//
//  Created by Tobi Kuyoro on 16/12/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        sender.isOn.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        sender.isOn.toggle()
    }
    
}
