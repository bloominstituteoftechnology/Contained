//
//  SettingsViewController.swift
//  NewContainedApp
//
//  Created by Alex Perse on 5/6/19.
//  Copyright © 2019 Alex Perse. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func rollSwitch(_ sender: UISwitch) {
        if (sender.isOn) {
            Settings.shared.shouldRoll = true
//            print("roll is on") //sanity check
        } else {
            Settings.shared.shouldRoll = false
//            print("roll is off") //sanity check
        }
    }
    
    @IBAction func zoomSwitch(_ sender: UISwitch) {
        if (sender.isOn) {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

 

}
