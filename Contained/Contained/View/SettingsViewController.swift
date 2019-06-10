//
//  SettingsViewController.swift
//  Contained
//
//  Created by Jake Connerly on 6/10/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {
    //
    // MARK: - Actions
    //
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if sender.isOn == true{
            Settings.shared.shouldRoll = true
        }else {
            Settings.shared.shouldRoll = false
        }
    }
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if sender.isOn == true {
            Settings.shared.shouldZoom = true
        }else {
            Settings.shared.shouldZoom = false
        }
    }
    
    //
    // MARK: - View Lifecycle
    //
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
