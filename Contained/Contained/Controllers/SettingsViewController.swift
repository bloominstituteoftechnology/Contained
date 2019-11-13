//
//  SettingsViewController.swift
//  Contained
//
//  Created by Donella Barcelo on 11/12/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var toggleRoll: UISwitch!
    @IBOutlet weak var toggleZoom: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func happyCrabToggled(_ sender: Any) {
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
