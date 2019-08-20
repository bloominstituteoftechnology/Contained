//
//  SettingsViewController.swift
//  Contained
//
//  Created by Joshua Franklin on 8/19/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        if sender.isOn {
            
            Settings.shared.shouldZoom = true
            
        } else {
            
            Settings.shared.shouldZoom = false
        }
        
    }
    
   
    @IBAction func toggleRoll(_ sender: UISwitch) {
        
        if sender.isOn {
        
            Settings.shared.shouldRoll = true
            
        } else {
            
            Settings.shared.shouldRoll = false
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
