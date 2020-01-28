//
//  SettingsViewController.swift
//  CrabSpriteKitGame
//
//  Created by Nichole Davidson on 1/27/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var toggleRollOutlet: UISwitch!
    @IBOutlet weak var toggleZoomOutlet: UISwitch!
    @IBAction func toggleRollTapped(_ send: UISwitch) {
        toggleZoomOutlet.isOn = send.isOn
      }
    @IBAction func toggleZoomTapped(_ send: UISwitch) {
        toggleZoomOutlet.isOn = send.isOn
  }
}
