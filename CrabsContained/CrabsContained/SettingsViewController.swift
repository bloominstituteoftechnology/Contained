//
//  SettingsViewController.swift
//  CrabsContained
//
//  Created by Jesse Ruiz on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func toggleRoll(_ sender: UISwitch) {
        sender.isOn.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        sender.isOn.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

}
