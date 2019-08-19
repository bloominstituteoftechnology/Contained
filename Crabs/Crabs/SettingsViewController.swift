//
//  SettingsViewController.swift
//  Crabs
//
//  Created by William Chen on 8/19/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func toggleRoll(_ sender: UISwitch) {
        sender.isOn = Settings.shared.shouldZoom
        
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
          sender.isOn = Settings.shared.shouldRoll
        
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
