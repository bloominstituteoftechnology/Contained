//
//  SettingsViewController.swift
//  ContainedAP
//
//  Created by Jorge Alvarez on 12/16/19.
//  Copyright © 2019 Jorge Alvarez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        
        Settings.shared.shouldRoll.toggle()
        
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        Settings.shared.shouldZoom.toggle()
        
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
