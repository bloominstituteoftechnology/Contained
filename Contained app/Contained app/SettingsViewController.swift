//
//  SettingsViewController.swift
//  Contained app
//
//  Created by Drew Miller on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func rollToggle(_ sender: UISwitch) {
    sender.isSelected.toggle()
    }
    
    @IBAction func zoomToggle(_ sender: UISwitch) {
    sender.isSelected.toggle()
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
