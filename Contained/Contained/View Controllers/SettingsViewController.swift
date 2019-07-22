//
//  SettingsViewController.swift
//  Contained
//
//  Created by Alex Rhodes on 7/22/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var settings: Settings?
   
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings?.shouldRoll.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings?.shouldZoom.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

 

}
