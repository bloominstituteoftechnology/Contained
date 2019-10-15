//
//  SettingsViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_204 on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var textureSegmentedControl: UISegmentedControl!
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }

    @IBAction func toggleTexture(_ sender: Any) {
        if textureSegmentedControl.selectedSegmentIndex == 0 {
            Settings.shared.textureName = "HappyCrab"
        } else if textureSegmentedControl.selectedSegmentIndex == 1 {
            Settings.shared.textureName = "WaitingCrab"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
