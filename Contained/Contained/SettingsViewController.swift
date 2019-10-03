//
//  SettingsViewController.swift
//  Contained
//
//  Created by Nicolas Rios on 10/2/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
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
    

  

}
