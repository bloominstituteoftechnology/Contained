//
//  SettingsViewController.swift
//  Contained
//
//  Created by Ryan Murphy on 5/6/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func screamTogglePressed(_ sender: UISwitch) { Settings.shared.shouldScream = sender.isOn
    }
    
    @IBAction func zoomTogglePressed(_ sender: UISwitch) { Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func rollTogglePressed(_ sender: UISwitch) { Settings.shared.shouldRoll = sender.isOn
    }
}
