//
//  SettingsViewController.swift
//  Contained
//
//  Created by Bradley Diroff on 2/24/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var rollSwitch: UISwitch!
    @IBOutlet var zoomSwitch: UISwitch!
    @IBOutlet var happySwitch: UISwitch!
    @IBOutlet var fadeSwitch: UISwitch!
    
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        
        if Settings.shared.shouldFade == false {
            fadeSwitch.isOn = true
            Settings.shared.shouldFade = true
        } else {
            fadeSwitch.isOn = false
            Settings.shared.shouldFade = false
        }
        
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        
        if Settings.shared.shouldRoll == false {
            rollSwitch.isOn = true
            Settings.shared.shouldRoll = true
        } else {
            rollSwitch.isOn = false
            Settings.shared.shouldRoll = false
        }

    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        if Settings.shared.shouldZoom == false {
            zoomSwitch.isOn = true
            Settings.shared.shouldZoom = true
        } else {
            zoomSwitch.isOn = false
            Settings.shared.shouldZoom = false
        }
 
    }
    
    @IBAction func toggleHappy(_ sender: UISwitch) {
        
        if Settings.shared.crabFace == "WaitingCrab" {
            happySwitch.isOn = true
            Settings.shared.crabFace = "HappyCrab"
        } else {
            happySwitch.isOn = false
            Settings.shared.crabFace = "WaitingCrab"
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
