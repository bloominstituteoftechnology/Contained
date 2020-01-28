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
    @IBAction func toggleRoll(_ send: UISwitch) {
        toggleRollOutlet.isOn = send.isOn
        
      }
   
    @IBOutlet weak var toggleZoomOutlet: UISwitch!
    @IBAction func toggleZoom(_ send: UISwitch) {
        toggleZoomOutlet.isOn = send.isOn
  }
}
