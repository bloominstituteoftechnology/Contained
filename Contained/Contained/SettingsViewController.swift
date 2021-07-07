//
//  SettingsViewController.swift
//  Contained
//
//  Created by Angel Buenrostro on 1/9/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import UIKit

let settings = Settings()


class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings.shouldRoll = sender.isOn
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings.shouldZoom = sender.isOn
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
