//
//  SettingsViewController.swift
//  Contained
//
//  Created by Enayatullah Naseri on 5/22/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        sender.isOn.toggle()

    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        sender.isOn.toggle()
        
    }
    

}
