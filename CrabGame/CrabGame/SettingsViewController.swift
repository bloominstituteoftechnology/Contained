//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Lydia Zhang on 2/24/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var crabLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
    }
    
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        if sender.isOn == false {
            crabLabel.text = "Waiting Crab"
        } else {
            crabLabel.text = "Happy Crab"
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
