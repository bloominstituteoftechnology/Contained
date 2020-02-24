//
//  SettingsViewController.swift
//  Contained
//
//  Created by Bradley Diroff on 2/24/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var rollSwitch: UISwitch!
    @IBOutlet var zoomSwitch: UISwitch!
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        if rollSwitch.isOn == false {
            rollSwitch.isOn = true
        } else {
            rollSwitch.isOn = false
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        if zoomSwitch.isOn == false {
            zoomSwitch.isOn = true
        } else {
            zoomSwitch.isOn = false
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
