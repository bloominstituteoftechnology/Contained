//
//  SettingsViewController.swift
//  Contained
//
//  Created by Rick Wolter on 10/14/19.
//  Copyright © 2019 Richar Wolter. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !(Settings.shared.shouldRoll)

     }
     
     
     @IBAction func toggleZoom(_ sender: UISwitch) {
         
        Settings.shared.shouldZoom = !(Settings.shared.shouldZoom )
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
