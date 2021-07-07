//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var rollSwitch: UISwitch!
    @IBOutlet weak var zoomSwitch: UISwitch!
    @IBOutlet weak var happyCrabSwitch: UISwitch!
    @IBOutlet weak var motionSicknessSwitch: UISwitch!
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        Settings.shared.crabIsHappy = sender.isOn
    }
    
    @IBAction func toggleMotionSickness(_ sender: UISwitch) {
        Settings.shared.motionSicknessEnabled = sender.isOn
    }
    
    //MARK: - View Lifecycle
    
    override func viewDidLoad() {
        rollSwitch.isOn = Settings.shared.shouldRoll
        zoomSwitch.isOn = Settings.shared.shouldZoom
        happyCrabSwitch.isOn = Settings.shared.crabIsHappy
        motionSicknessSwitch.isOn = Settings.shared.motionSicknessEnabled
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Settings.shared.save()
    }
}
