//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Eugene White on 6/3/20.
//  Copyright © 2020 Eugene White. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
 
    @IBOutlet weak var toggleRoll: UISwitch!
    func toggleRollOn (isOn: Bool) {
        if toggleRoll.isOn == true {
            
        }
    }
    @IBOutlet weak var toggleZoom: UISwitch!
    
    
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
