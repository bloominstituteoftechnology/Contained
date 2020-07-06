//
//  SettingsViewController.swift
//  Contained
//
//  Created by Marissa Gonzales on 4/19/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var zoomIsOn = false
    
    var toggleRollOn = false
    
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        sender.isOn = true
        
        
        
        
        
    }
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        
        sender.isOn = true
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
