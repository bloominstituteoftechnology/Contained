//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Joel Groomer on 8/6/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var sgmtCrabType: UISegmentedControl!
    
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

    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    @IBAction func changeCrabType(_ sender: UISegmentedControl) {
        Settings.shared.crabType = Settings.CrabType.allCases[sender.selectedSegmentIndex]
    }
}
