//
//  SettingsViewController.swift
//  Contained
//
//  Created by Christopher Aronson on 4/29/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
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
        if Settings.shared.shouldRoll {
            Settings.shared.shouldRoll = false
        } else {
            Settings.shared.shouldRoll = true
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if Settings.shared.shouldZoom {
            Settings.shared.shouldZoom = false
        } else {
            Settings.shared.shouldZoom = true
        }
    }
}
