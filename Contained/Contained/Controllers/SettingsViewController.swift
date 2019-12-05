//
//  SettingsViewController.swift
//  Contained
//
//  Created by Joshua Rutkowski on 12/4/19.
//  Copyright © 2019 Joshua Rutkowski. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

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
    // MARK - IBAction
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        // Sets the shared Settings property to the sender's isOn property
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
}
