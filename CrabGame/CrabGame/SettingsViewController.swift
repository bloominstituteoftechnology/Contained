//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        Settings.shared.happyCrab = sender.isOn
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
