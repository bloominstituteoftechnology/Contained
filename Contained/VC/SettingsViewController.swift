//
//  SettingsViewController.swift
//  Contained
//
//  Created by Bradley Yin on 7/22/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom =  sender.isOn
    }
    
    @IBAction func toggleStore(_ sender: UISwitch) {
    
        Settings.shared.shouldStore = sender.isOn
    }
    
    @IBAction func toggleStretch(_ sender: UISwitch) {
        Settings.shared.shouldStretch = sender.isOn
    }
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
    }
    @IBAction func toggleHappy(_ sender: UISwitch) {
        Settings.shared.shouldHappy = sender.isOn
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
