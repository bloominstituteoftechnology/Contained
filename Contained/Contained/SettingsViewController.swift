//
//  SettingsViewController.swift
//  Contained
//
//  Created by Wyatt Harrell on 2/24/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldRoll = true
        } else if sender.isOn == false {
            Settings.shared.shouldRoll = false
        }
        
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldZoom = true
        } else if sender.isOn == false {
            Settings.shared.shouldZoom = false
        }
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldFade = true
        } else if sender.isOn == false {
            Settings.shared.shouldFade = false
        }
    }
    
    @IBAction func toggleWaitingCrab(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldShowWaitingCrab = true
        } else if sender.isOn == false {
            Settings.shared.shouldShowWaitingCrab = false
        }
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
