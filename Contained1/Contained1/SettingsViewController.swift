//
//  SettingsViewController.swift
//  Contained1
//
//  Created by Michael Flowers on 4/30/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        sender.isOn = !sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        sender.isOn = !sender.isOn
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
