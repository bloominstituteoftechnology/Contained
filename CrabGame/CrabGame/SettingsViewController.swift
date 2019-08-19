//
//  SettingsViewController.swift
//  CrabGame
//
//  Created by Jordan Christensen on 8/20/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CustomScene.sharedCrabCS.returnToMid()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
            Settings.shared.shouldRoll = !Settings.shared.shouldRoll
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
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
