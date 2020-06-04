//
//  SettingsViewController.swift
//  Contained
//
//  Created by Cora Jacobson on 6/2/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if Settings.shared.shouldRoll == false {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if Settings.shared.shouldZoom == false {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }

    @IBOutlet weak var toggleTexture: UISegmentedControl!
    @IBAction func toggleTexture(_ sender: UISegmentedControl) {
        switch toggleTexture.selectedSegmentIndex {
        case 1:
            Settings.shared.texture = "WaitingCrab"
        default:
            Settings.shared.texture = "HappyCrab"
        }
    }
    
}
