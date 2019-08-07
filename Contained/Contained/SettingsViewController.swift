//
//  SettingsViewController.swift
//  Contained
//
//  Created by Fabiola S on 8/6/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
       Settings.shared.shouldRoll = true
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = true
    }
    

}
