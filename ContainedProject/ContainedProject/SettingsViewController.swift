//
//  SettingsViewController.swift
//  ContainedProject
//
//  Created by Lisa Fisher on 8/7/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
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

    
    @IBAction func toggleRoll(_ sender: UISwitch) {

        Settings.shared.shouldRoll = true
        sender.isOn = true
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        Settings.shared.shouldZoom = true
        sender.isOn = true
      
    }
}

