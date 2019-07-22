//
//  SettingsViewController.swift
//  Contained
//
//  Created by Blake Andrew Price on 7/22/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom.toggle()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
