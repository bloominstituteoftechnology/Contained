//
//  SettingsViewController.swift
//  Contained_Skye
//
//  Created by user162867 on 12/16/19.
//  Copyright © 2019 user162867. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn {
            sender.isOn = false
        } else {
            sender.isOn = true
        }
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
    if sender.isOn {
        sender.isOn = false
    } else {
        sender.isOn = true
    }
    }
    
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        if sender.isOn {
            sender.isOn = false
        } else {
            sender.isOn = true
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
