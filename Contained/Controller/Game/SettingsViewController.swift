//
//  SettingsViewController.swift
//  Contained
//
//  Created by Kenny on 12/15/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var fadeSlider: UISlider!
    @IBOutlet weak var crabImage: UIImageView!
    
    @IBAction func rollSwitch(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    @IBAction func zoomSwitch(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    @IBAction func fadeDidChange(_ sender: UISlider) {
        let senderValue = CGFloat(sender.value)
        crabImage.alpha = senderValue
        Settings.shared.fade = senderValue
    }
    
}
