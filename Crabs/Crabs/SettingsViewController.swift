//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Enzo Jimenez-Soto on 4/20/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
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

      
    }

}
