//
//  SettingsViewController.swift
//  SpriteKitGame
//
//  Created by Michael on 12/16/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    @IBAction func toggleWaitingCrab(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.toggleCrabs = "WaitingCrab"
        } else {
            Settings.shared.toggleCrabs = "HappyCrab"
        }
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.fade = sender.isOn
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
