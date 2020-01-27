//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
     var userDefault = UserDefaults()
    
    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var zoomLabel: UILabel!
    @IBOutlet weak var happyCrabLabel: UILabel!
    
    
    @IBOutlet weak var rollSwitch: UISwitch!
    @IBOutlet weak var zoomSwitch: UISwitch!
    @IBOutlet weak var happyCrabSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func toggleRoll(_ sender: UISwitch) {
        rollSwitch.setOn(sender.isOn, animated: true)
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        zoomSwitch.setOn(sender.isOn, animated: true)
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        userDefault.set(sender.isOn, forKey: "CrabSetting")
        happyCrabSwitch.setOn(sender.isOn, animated: true)
        
    }
    
    
    
    
}
