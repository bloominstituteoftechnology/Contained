//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Mark Gerrior on 2/24/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !Settings.shared.shouldRoll
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Settings.shared.happyCrab = !Settings.shared.happyCrab
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
