//
//  SettingsViewController.swift
//  Contained
//
//  Created by Lambda_School_Loaner_241 on 2/12/20.
//  Copyright © 2020 Lambda_School_Loaner_241. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var rollSwitch: UISwitch!
    
    @IBOutlet weak var zoomSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch){
        Settings.shared.shouldRoll = sender.isOn
}

    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
}
    
    
   
    

}
