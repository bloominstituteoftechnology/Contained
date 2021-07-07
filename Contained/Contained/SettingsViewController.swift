//
//  SettingsViewController.swift
//  Contained
//
//  Created by Morgan Smith on 12/5/19.
//  Copyright © 2019 Morgan Smith. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {


    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
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
